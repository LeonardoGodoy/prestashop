using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Group < Mapper::Resource
      resource :groups
      model :group
    end
  end
end
