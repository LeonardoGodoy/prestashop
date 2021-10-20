using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class Language < Model
      resource :languages
      model :language

      class << self
        def find_by_iso_code client, iso_code
          client.find_by 'filter[iso_code]' => iso_code
        end
      end
    end
  end
end
