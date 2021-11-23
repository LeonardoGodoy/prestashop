using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class Resource
      extend Prestashop::Mapper::Attributes

      include Prestashop::Mapper::Extension
      extend Prestashop::Mapper::Extension

      class << self
        def resource value = nil
          value.nil? ? @resource : @resource = value
        end

        def model value = nil
          value.nil? ? @model : @model = value
        end
      end
    end
  end
end
