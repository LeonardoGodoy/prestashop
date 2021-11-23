using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class StockAvailable < Mapper::Resource
      resource :stock_availables
      model :stock_available
    end
  end
end
