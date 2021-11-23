using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Configuration < Mapper::Resource
      resource :configurations
      model :configuration
    end
  end
end
