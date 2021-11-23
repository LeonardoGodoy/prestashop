using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class CustomerMessage < Mapper::Resource
      resource :customer_messages
      model :customer_message
    end
  end
end
