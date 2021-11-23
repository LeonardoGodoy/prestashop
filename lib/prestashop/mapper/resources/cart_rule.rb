using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class CartRule < Mapper::Resource
      resource :cart_rules
      model :cart_rule
    end
  end
end
