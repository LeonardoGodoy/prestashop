using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Delivery < Mapper::Resource
      resource :deliveries
      model :delivery
    end
  end
end
