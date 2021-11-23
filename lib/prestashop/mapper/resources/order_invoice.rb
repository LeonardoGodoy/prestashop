using Prestashop::Mapper::Refinement

module Prestashop
  module Resources
    class OrderInvoice < Mapper::Resource
      resource :order_invoices
      model :order_invoice
    end
  end
end
