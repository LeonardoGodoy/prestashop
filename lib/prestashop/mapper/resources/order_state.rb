using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class OrderState < Mapper::Resource
      resource :order_states
      model :order_state
    end
  end
end
