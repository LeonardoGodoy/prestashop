using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class StockMovement < Mapper::Resource
      resource :stock_movements
      model :stock_movement
    end
  end
end
