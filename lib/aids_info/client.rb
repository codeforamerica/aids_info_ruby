require 'aids_info/client'
require 'aids_info/client/connection'
require 'aids_info/client/request'


module AidsInfo
  class Client
    include AidsInfo::Client::Connection
    include AidsInfo::Client::Request

  end
end
