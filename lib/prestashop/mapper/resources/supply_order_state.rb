using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class SupplyOrderState < Mapper::Resource
      resource :supply_order_states
      model :supply_order_state
    end
  end
end
