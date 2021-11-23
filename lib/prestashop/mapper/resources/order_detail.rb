using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class OrderDetail < Mapper::Resource
      resource :order_details
      model :order_detail
    end
  end
end
