using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Language < Mapper::Resource
      resource :languages
      model :language

      finders :iso_code
    end
  end
end
