require 'uec_express_api'
require 'json'
require 'sinatra'

settings.add_charset << "application/json"

get '/' do
  uec_express = UECExpressApi.new()
  uec_express.to_s
  uec_express.to_hash.to_json
end
