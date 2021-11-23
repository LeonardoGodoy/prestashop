using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class WeightRange < Mapper::Resource
      resource :weight_ranges
      model :weight_range
    end
  end
end
