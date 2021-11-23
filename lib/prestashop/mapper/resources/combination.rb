using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Combination < Mapper::Resource
      resource :combinations
      model :combination

      has_many :product_option_value
    end
  end
end
