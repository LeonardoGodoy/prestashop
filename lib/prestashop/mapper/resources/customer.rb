using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Customer < Mapper::Resource
      resource :customers
      model :customer
    end
  end
end
