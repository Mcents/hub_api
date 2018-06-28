require 'faraday'
require 'faraday_middleware'
require 'json'

class RedditService
  attr_reader :conn

  def initialize
    @conn = Faraday.new(url: "https://reddit.com") do |faraday|
      faraday.use FaradayMiddleware::FollowRedirects
      faraday.adapter  Faraday.default_adapter
    end
  end

  #a['data']['children']
  def soccer_info
    parse(conn.get("/r/soccer/hot.json?sr_detail&limit=10"))
  end

  private

  def parse(response)
    JSON.parse(response.body, symoblize_names: true)
  end
end
