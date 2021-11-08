using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class ProductFeature < Model
      resource :product_features
      model :product_feature

      attr_accessor :id, :position
      attr_writer   :name
      attr_accessor :id_lang

      def initialize args = {}
        @id       = args[:id]
        @position = args[:position]
        @name     = args.fetch(:name)

        @id_lang  = args.fetch(:id_lang)
      end

      def name
        @name.plain
      end

      def hash
        validate!
        { name: hash_lang(name, id_lang) }
      end

      def validate!
        raise ArgumentError, 'id lang must be number' unless id_lang.kind_of?(Integer)
        raise ArgumentError, 'name must string' unless name.kind_of?(String)
      end
    end
  end
end
