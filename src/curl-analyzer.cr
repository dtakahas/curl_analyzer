require "./curl-analyzer/*"
require "http/server"

module Curl::Analyzer
  ENV["CURL_ANALYZER_PORT"] ||= "8080"
  port = ENV["CURL_ANALYZER_PORT"].to_i

  server = HTTP::Server.new(port) do |context|
    context.response.content_type = "text/plain"
    display_params = ""
    context.request.query_params.each do |k, v|
      display_params = display_params + "\t#{k}: #{v}\n"
    end
    context.response.print "Got path: #{context.request.path}\n" +
                           "Got raw query params: #{context.request.query_params}\n" +
                           "Got parsed query params: \n#{display_params}\n"
  end

  puts "Listening on http://127.0.0.1:#{port}"
  server.listen
end
