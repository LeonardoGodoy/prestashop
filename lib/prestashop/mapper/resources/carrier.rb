using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Carrier < Mapper::Resource
      resource :carriers
      model :carrier
    end
  end
end
