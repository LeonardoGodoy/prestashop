using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class StockMovementReason < Mapper::Resource
      resource :stock_movement_reasons
      model :stock_movement_reason
    end
  end
end
