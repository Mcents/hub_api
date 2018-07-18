class RedditSoccerInfo
  attr_reader :soccer_array

  def initialize(soccer_atts={})
    @soccer_array = []
  end

  def soccer_info_hash
    RedditService.new.soccer_feed['data']['children'].each do |raw|
      create_hash_structure(raw)
    end
    soccer_array
  end

  def create_hash_structure(data)
    hash = {}
    hash['title'] = data['data']['title']
    hash['score'] = data['data']['score']
    hash['url']   = data['data']['url']
    hash['body']  = data['data']['selftext']
    soccer_array << hash
  end
end
