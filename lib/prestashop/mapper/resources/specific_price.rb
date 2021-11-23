using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class SpecificPrice < Mapper::Resource
      resource :specific_prices
      model :specific_price
    end
  end
end
