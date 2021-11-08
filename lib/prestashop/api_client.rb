module Prestashop
  class ApiClient
    extend Forwardable

    def_delegators :connection, :create, :read, :update, :delete, :check, :upload

    attr_reader :api_key, :api_url, :connection

    def initialize api_key, api_url
      @connection = Api::Connection.new api_key, api_url
    end
  end
end
