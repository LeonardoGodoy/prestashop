using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Warehouse < Mapper::Resource
      resource :warehouses
      model :warehouse
    end
  end
end
