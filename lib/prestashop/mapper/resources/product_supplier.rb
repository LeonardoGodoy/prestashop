using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class ProductSupplier < Mapper::Resource
      resource :product_suppliers
      model :product_supplier
    end
  end
end
