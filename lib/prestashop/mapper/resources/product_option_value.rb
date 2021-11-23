using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class ProductOptionValue < Mapper::Resource
      resource :product_option_values
      model :product_option_value

      localized :name
    end
  end
end
