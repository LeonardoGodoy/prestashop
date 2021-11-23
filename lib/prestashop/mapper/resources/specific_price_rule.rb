using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class SpecificPriceRule < Mapper::Resource
      resource :specific_price_rules
      model :specific_price_rule
    end
  end
end
