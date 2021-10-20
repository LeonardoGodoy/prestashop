require 'prestashop/api'
require 'prestashop/api_client'
require 'prestashop/mapper'

# == This module is wrapper of three submodules API, ApiClient and Mapper
#
# === API
# Is used for comunication with Prestashop WebService
#
# === ApiClient
# Create instance of API, it's holded in memory locally
#
# === Mapper
# Map available Prestashop objects to class and instances.
#
# @see Api
# @see ApiClient
# @see Mapper
#
module Prestashop
end
