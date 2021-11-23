using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class SupplyOrder < Mapper::Resource
      resource :supply_orders
      model :supply_order
    end
  end
end
