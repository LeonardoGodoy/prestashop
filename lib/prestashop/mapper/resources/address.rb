using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Address < Mapper::Resource
      resource :addresses
      model :address
    end
  end
end
