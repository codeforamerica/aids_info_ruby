require 'faraday_middleware'

module AidsInfo
  class Client
    module Connection
      private

      def connection
        Faraday.new(:url => 'http://aidsinfo.nlm.nih.gov/') do |connection|
          connection.use Faraday::Request::UrlEncoded
          connection.use Faraday::Response::RaiseError
          connection.use Faraday::Response::Rashify
          connection.use Faraday::Response::ParseXml
          connection.adapter(Faraday.default_adapter)
        end
      end
    end
  end
end
