using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class TaxRule < Model
      resource :tax_rules
      model :tax_rule

      class << self
        def get_by_id_country client, id
          where client, 'filter[id_country]' => id, display: 'full'
        end
      end
    end
  end
end
