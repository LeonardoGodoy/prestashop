using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class PriceRange < Mapper::Resource
      resource :price_ranges
      model :price_range
    end
  end
end
