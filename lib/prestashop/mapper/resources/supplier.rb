using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Supplier < Mapper::Resource
      resource :suppliers
      model :supplier

      finders :name
    end
  end
end
