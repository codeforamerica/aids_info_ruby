module AidsInfo
  class Client
    module Request
      def get(path)
        request(:get, path)
      end

      private

      def request(method, path)
        response = connection.send(method) do |request|
          request.url(path)
        end
        response.body
      end
    end
  end
end
