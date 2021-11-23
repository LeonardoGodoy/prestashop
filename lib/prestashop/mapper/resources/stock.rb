using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Stock < Mapper::Resource
      resource :stocks
      model :stock
    end
  end
end
