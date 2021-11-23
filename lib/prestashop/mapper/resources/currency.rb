using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Currency < Mapper::Resource
      resource :currencies
      model :currency
    end
  end
end
