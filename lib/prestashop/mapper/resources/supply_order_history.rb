using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class SupplyOrderHistory < Mapper::Resource
      resource :supply_order_histories
      model :supply_order_history
    end
  end
end
