using Prestashop::Mapper::Refinement
module Prestashop
  module Mapper
    class SpecificPrice < Model
      resource :specific_prices
      model :specific_price
      
      attr_accessor :id, :id_product, :from, :id_shop, :id_cart, :id_currency, :id_country, :id_group, :id_customer, :price, :from, :to, :from_quantity, :reduction, :reduction_tax, :reduction_type
      
      def initialize args = {}
        @id                 = args[:id]
        @id_shop            = args.fetch(:id_shop, 1)
        @id_cart            = args.fetch(:id_cart, 0)
        @id_currency        = args.fetch(:id_currency, 0)
        @id_country         = args.fetch(:id_country, 0)
        @id_customer        = args.fetch(:id_customer, 0)
        @id_product         = args.fetch(:id_product)
        @id_group           = args.fetch(:id_group, 0)
        @price              = args.fetch(:price, -1)
        @from_quantity      = args.fetch(:minimal_quantity, 1)
        @reduction          = args[:reduction]
        @reduction_tax      = args.fetch(:reduction_tax, 1)
        @reduction_type     = args.fetch(:reduction_type, "percentage")
        @from               = args.fetch(:from, "0000-00-00 00:00:00"),
        @to                 = args.fetch(:from, "0000-00-00 00:00:00")
      end
      
      def hash
        specific_price = {
          id_product:         id_product,
          id_group:           id_group,
          id_shop:            id_shop,
          id_cart:            id_cart,
          id_currency:        id_currency,
          id_country:         id_country,
          id_customer:        id_customer,
          price:              price,
          from_quantity:      from_quantity,
          reduction:          reduction,
          reduction_tax:      reduction_tax,
          reduction_type:     reduction_type,
          from:               from,
          to:                 to
        }
        specific_price
      end
      
    end
  end
end