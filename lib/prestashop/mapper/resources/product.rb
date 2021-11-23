using Prestashop::Mapper::Refinement

# Prestashop::Resources::Product.new(name: 'test')

module Prestashop
  module Resources
    class Product < Mapper::Resource
      resource :products
      model    :product

      localized :meta_description,
                :meta_keywords,
                :meta_title,
                :link_rewrite,
                :name,
                :description,
                :description_short,
                :available_now,
                :available_later

      not_writable :quantity, :manufacturer_name

      # default do |attributes|
      #   {
      #     type: :simple,
      #     condition: :new,
      #     visibility: :both,
      #     is_virtual: false,
      #     online_only: false,
      #     on_sale: false,
      #     cache_has_attachment: false,
      #     id_shop_default: 1,
      #     cache_default_attribute: 0,
      #     position_in_category: 0,
      #     quantity_discount: 0,
      #     cache_is_pack: false,
      #     ecotax: 0,
      #     minimal_quantity: 1,
      #     available_date: Date.today.strftime("%F")
      #   }
      # end

      has_many :category
      has_many :product_feature
    end
  end
end
