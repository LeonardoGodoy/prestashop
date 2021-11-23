using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class ShopGroup < Mapper::Resource
      resource :shop_groups
      model :shop_group
    end
  end
end
