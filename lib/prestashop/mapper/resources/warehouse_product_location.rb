using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class WarehouseProductLocation < Mapper::Resource
      resource :warehouse_product_locations
      model :warehouse_product_location
    end
  end
end
