using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class TranslatedConfiguration < Mapper::Resource
      resource :translated_configurations
      model :translated_configuration
    end
  end
end
