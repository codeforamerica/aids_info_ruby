require 'aids_info/client'
require 'aids_info/client/connection'
require 'aids_info/client/request'
require 'aids_info/client/api'

module AidsInfo
  class Client
    include AidsInfo::Client::Connection
    include AidsInfo::Client::Request
    include AidsInfo::Client::API
  end
end
