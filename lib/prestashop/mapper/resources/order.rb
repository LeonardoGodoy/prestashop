using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Order < Mapper::Resource
      resource :orders
      model :order
    end
  end
end
