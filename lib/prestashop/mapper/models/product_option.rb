using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class ProductOption < Model
      resource :product_options
      model :product_option

      finders :name

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

      def validate!
        raise ArgumentError, 'id lang must be number' unless id_lang.kind_of?(Integer)
        raise ArgumentError, 'name must string' unless name.kind_of?(String)
        raise ArgumentError, 'group_type must string' unless group_type.kind_of?(String)
      end
    end
  end
end
