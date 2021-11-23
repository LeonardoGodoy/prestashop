using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class ProductOption < Mapper::Resource
      resource :product_options
      model :product_option

      localized :name, :public_name

      finders :name
    end
  end
end
