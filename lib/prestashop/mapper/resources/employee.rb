using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class Employee < Mapper::Resource
      resource :employees
      model :employee
    end
  end
end
