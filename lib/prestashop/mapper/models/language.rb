using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class Language < Model
      resource :languages
      model :language

      finders :iso_code
    end
  end
end
