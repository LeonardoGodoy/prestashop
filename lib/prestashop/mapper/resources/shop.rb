using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Shop < Mapper::Resource
      resource :shops
      model :shop
    end
  end
end
