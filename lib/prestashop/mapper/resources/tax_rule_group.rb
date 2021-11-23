using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class TaxRuleGroup < Mapper::Resource
      resource :tax_rule_groups
      model :tax_rule_group
    end
  end
end
