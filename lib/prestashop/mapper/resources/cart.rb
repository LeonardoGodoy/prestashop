using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Cart < Mapper::Resource
      resource :carts
      model :cart
    end
  end
end
