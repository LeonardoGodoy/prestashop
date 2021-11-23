using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class OrderCarrier < Mapper::Resource
      resource :order_carriers
      model :order_carrier
    end
  end
end
