using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class State < Mapper::Resource
      resource :states
      model :state
    end
  end
end
