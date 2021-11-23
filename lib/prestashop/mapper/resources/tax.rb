using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Tax < Mapper::Resource
      resource :taxes
      model :tax
    end
  end
end
