using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class OrderHistory < Mapper::Resource
      resource :order_histories
      model :order_history
    end
  end
end
