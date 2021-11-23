using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Category < Mapper::Resource
      resource :categories
      model :category

      localized :meta_description,
                :meta_keywords,
                :meta_title,
                :link_rewrite,
                :name,
                :description
    end
  end
end
