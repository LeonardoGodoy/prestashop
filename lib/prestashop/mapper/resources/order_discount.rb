using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class OrderDiscount < Mapper::Resource
      resource :order_discounts
      model :order_discount
    end
  end
end
