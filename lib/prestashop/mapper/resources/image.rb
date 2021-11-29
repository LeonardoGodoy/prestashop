using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Image < Mapper::Resource
      resource :images
      model :image
    end
  end
end
