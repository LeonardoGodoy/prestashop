using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Tag < Mapper::Resource
      resource :tags
      model :tag
    end
  end
end
