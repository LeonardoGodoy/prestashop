using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Country < Mapper::Resource
      resource :countries
      model :country

      finders :iso_code
    end
  end
end
