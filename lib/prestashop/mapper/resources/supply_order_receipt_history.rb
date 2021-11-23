using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class SupplyOrderReceiptHistory < Mapper::Resource
      resource :supply_order_receipt_histories
      model :supply_order_receipt_history
    end
  end
end
