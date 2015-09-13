require "cgi"
require "http/client"

module Qiita
  module Connection
    def get(path = "", options = {} of String => String)
      url = "#{ENDPOINT}#{path}"
      url = "#{url}?#{build_query(options)}" unless options.empty?
      res = HTTP::Client.get(url)
      res.body
    end

    private def build_query(options = {} of String => String)
      options.to_a.map {|o| "#{o[0]}=#{CGI.escape(o[1].to_s)}" }.join("&")
    end
  end
end
