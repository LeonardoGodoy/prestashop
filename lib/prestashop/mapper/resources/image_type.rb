using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class ImageType < Mapper::Resource
      resource :image_types
      model :image_type
    end
  end
end
