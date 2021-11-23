using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Store < Mapper::Resource
      resource :stores
      model :store
    end
  end
end
