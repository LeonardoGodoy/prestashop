using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class ProductFeature < Mapper::Resource
      resource :product_features
      model :product_feature

      localized :name
    end
  end
end
