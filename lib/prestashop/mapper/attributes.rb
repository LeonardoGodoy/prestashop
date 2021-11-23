module Prestashop
  module Mapper
    module Attributes
      attr_reader :localized_attributes, :not_writable_attributes, :default_attributes, :associations

      module ClassMethods
        def localized(*attributes)
          @localized_attributes = *attributes
        end

        def not_writable(*attributes)
          @not_writable_attributes = *attributes
        end

        def has_many(resource)
          (@associations ||= []).push(resource)
        end

        def default(attributes)
          @default_attributes = attributes
        end
      end

      module InstanceMethods
        attr_reader :data

        def initialize(data)
          @data = data
        end

        def hash(include_defaults: true)
          hash = include_defaults && self.class.default_attributes ? self.class.default_attributes.call(data) : {}

          accepted_attributes = data.reject do |key, _|
            [*self.class.not_writable_attributes, *self.class.localized_attributes].include?(key)
          end

          hash.merge!(accepted_attributes)

          hash.each do |key, value|
            next unless [true, false].include?(hash[key])

            hash[key] = value ? '1' : '0'
          end

          id_lang = hash.delete(:id_lang)
          self.class.localized_attributes && self.class.localized_attributes.each do |key|
            next unless data[key]

            if data[key].is_a?(String)
              hash[key] = localize_value(data[key], id_lang)
            else
              hash[key] = data[key]
            end
          end

          self.class.associations && self.class.associations.each do |resource|
            camel_resource = resource.to_s.split('_').collect(&:capitalize).join
            klass = Object.const_get("Prestashop::Resources::#{camel_resource}")

            association_input_key = "id_#{klass.resource}".to_sym
            id_array = data[association_input_key]
            next unless id_array

            id_object_array = id_array.uniq.map { |id| { id: id } }
            associations = hash[:associations] ||= {}
            associations[klass.resource] = { klass.model => id_object_array }
            hash.delete(association_input_key)
          end

          hash
        end

        private

        def localize_value(value, id_lang)
          { language: { val: value, attr: { id: id_lang } } } if value
        end
      end

      def self.extended(klass)
        klass.include InstanceMethods
        klass.extend ClassMethods
      end
    end
  end
end
