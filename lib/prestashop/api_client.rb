require 'prestashop/client/error'
require 'prestashop/client/cache'

module Prestashop
  class ApiClient
    delegate  :create, :read, :update, :delete, :check, :upload, to: :connection

    delegate  :manufacturers_cache, :clear_manufacturers_cache, :categories_cache, :clear_categories_cache, :features_cache, :clear_features_cache,
              :feature_values_cache, :clear_feature_values_cache, :options_cache, :clear_options_cache, :option_values_cache, :clear_option_values_cache,
              to: :cache

    attr_reader :api_key, :api_url, :connection, :cache

    def initialize api_key, api_url
      @connection = Api::Connection.new api_key, api_url
      @cache = Client::Cache.new
    end
  end
end
