using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class CustomerThread < Mapper::Resource
      resource :customer_threads
      model :customer_thread
    end
  end
end
