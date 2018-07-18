class RedditHockeyInfo
  attr_reader :hockey_array

  def initialize(hockey_atts={})
    @hockey_array = []
  end

  def hockey_info_hash
    RedditService.new.hockey_feed['data']['children'].each do |raw|
      create_hash_structure(raw)
    end
    hockey_array
  end

  def create_hash_structure(data)
    hash = {}
    hash['title'] = data['data']['title']
    hash['score'] = data['data']['score']
    hockey_array << hash
  end
end
