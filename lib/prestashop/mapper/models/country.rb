using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class Country < Model
      resource :countries
      model :country

      finders :iso_code
    end
  end
end
