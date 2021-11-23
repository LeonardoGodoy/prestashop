using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class OrderPayment < Mapper::Resource
      resource :order_payments
      model :order_payment
    end
  end
end
