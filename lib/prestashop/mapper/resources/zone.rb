using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Zone < Mapper::Resource
      resource :zones
      model :zone
    end
  end
end
