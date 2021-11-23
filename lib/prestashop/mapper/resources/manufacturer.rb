using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Manufacturer < Mapper::Resource
      resource :manufacturers
      model    :manufacturer

      localized :meta_description,
                :meta_keywords,
                :meta_title,
                :link_rewrite,
                :description,
                :description_short
    end
  end
end
