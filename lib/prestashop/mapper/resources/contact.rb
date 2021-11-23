using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Contact < Mapper::Resource
      resource :contacts
      model :contact
    end
  end
end
