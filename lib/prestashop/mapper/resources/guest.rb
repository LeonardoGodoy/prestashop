using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Guest < Mapper::Resource
      resource :guests
      model :guest
    end
  end
end
