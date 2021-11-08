using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class Category < Model
      resource :categories
      model :category

      attr_accessor :id_lang
      attr_accessor :id, :id_parent, :level_depth, :active, :id_shop_default, :is_root_category, :position
      attr_writer   :name, :description, :link_rewrite

      def initialize args = {}
        @id               = args[:id]
        @id_parent        = args.fetch(:id_parent, 2)
        @level_depth      = args[:level_depth]
        # nb_products_recursive
        @active           = args.fetch(:active, 1)
        @id_shop_default  = args.fetch(:id_shop_default, 1)
        @is_root_category = 0
        @position         = args[:position]
        # date_add
        # date_upd
        @name             = args.fetch(:name)
        @link_rewrite     = args[:link_rewrite]
        @description      = args[:description]
        @meta_title       = args[:meta_title]
        @meta_description = args[:meta_description]
        @meta_keywords    = args[:meta_keywords]

        @id_lang          = args.fetch(:id_lang)
      end

      # Category name can't have some symbols and can't be longer than 63
      def name
        @name.plain.truncate(61)
      end

      # Description can have additional symbols and can't be longer than 255
      def description
        @description.restricted.truncate(252) if @description
      end

      # Link rewrite must be usable in uri
      def link_rewrite
        @link_rewrite ? @link_rewrite.parameterize : name.parameterize
      end

      # Category hash structure, which will be converted to XML
      def hash
        {
          id_parent:        id_parent,
          active:           active ,
          id_shop_default:  id_shop_default,
          is_root_category: is_root_category,
          name:             hash_lang(name, id_lang),
          link_rewrite:     hash_lang(link_rewrite, id_lang),
          description:      hash_lang(description, id_lang),
          meta_title:       hash_lang(name, id_lang),
          meta_description: hash_lang(description, id_lang),
          meta_keywords:    hash_lang(meta_keywords, id_lang)
        }
      end
    end
  end
end
