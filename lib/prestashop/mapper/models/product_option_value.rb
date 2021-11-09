using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class ProductOptionValue < Model
      resource :product_option_values
      model :product_option_value

      attr_accessor :id, :id_attribute_group, :color, :position, :name
      attr_accessor :id_lang

      def initialize args = {}
        @id                 = args[:id]
        @id_attribute_group = args.fetch(:id_attribute_group)
        @color              = args.fetch(:color, 0)
        @position           = args[:position]
        @name               = args.fetch(:name)
        @id_lang            = args.fetch(:id_lang)
      end

      def hash
        validate!
        {
          name:               hash_lang(name, id_lang),
          id_attribute_group: id_attribute_group,
          color:              color
        }
      end

      # Supplier must have 1/0 as active and name must be string
      def validate!
        raise ArgumentError, 'id lang must be number' unless id_lang.kind_of?(Integer)
        raise ArgumentError, 'name must string' unless name.kind_of?(String)
        raise ArgumentError, 'id attribute group must be number' unless id_attribute_group.kind_of?(Integer)
      end
    end
  end
end
