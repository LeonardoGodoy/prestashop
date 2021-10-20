using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class ProductOption < Model
      resource :product_options
      model :product_option

      attr_accessor :id, :is_color_group, :group_type, :position, :name
      attr_writer   :public_name
      attr_accessor :id_lang

      def initialize args = {}
        @id             = args[:id]
        @is_color_group = args.fetch(:is_color_group, 0)
        @group_type     = args.fetch(:group_type, 'select')
        @position       = args[:position]
        @name           = args.fetch(:name)
        @public_name    = args[:public_name]

        @id_lang        = args.fetch(:id_lang)
      end

      def public_name
        @public_name ? @public_name : name
      end

      def hash
        validate!

        { is_color_group: is_color_group,
          position: position,
          group_type: group_type,
          name: hash_lang(name, id_lang),
          public_name: hash_lang(public_name, id_lang) }
      end

      def find_or_create client
        option = self.class.find_in_cache client, name, id_lang
        unless option
          option = create(client)
          client.clear_options_cache
        end
        option[:id]
      end

      def validate!
        raise ArgumentError, 'id lang must be number' unless id_lang.kind_of?(Integer)
        raise ArgumentError, 'name must string' unless name.kind_of?(String)
        raise ArgumentError, 'group_type must string' unless group_type.kind_of?(String)
      end

      class << self
        def create_from_hash client, product_options, id_lang
          result = []
          product_options.each do |product_option|
            id_o = ProductOption.new(name: product_option[:name], id_lang: id_lang).find_or_create(client)
            result << ProductOptionValue.new(name: product_option[:value], id_attribute_group: id_o, id_lang: id_lang).find_or_create(client)
          end if product_options
          result
        end

        def find_in_cache client, name, id_lang
          client.options_cache.find{|k| k[:name].find_lang(name, id_lang) } if client.options_cache
        end

        def cache
          all display: '[id,name]'
        end
      end
    end
  end
end
