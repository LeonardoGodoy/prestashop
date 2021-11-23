using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class ProductFeatureValue < Mapper::Resource
      resource :product_feature_values
      model :product_feature_value

      localized :value
    end
  end
end
