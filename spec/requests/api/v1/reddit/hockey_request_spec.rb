require 'rails_helper'

describe 'HockeyController' do
  context 'hockey_info' do
    it 'returns the top posts for r/hockey' do

      RedditService.new.hockey_feed

      get "/api/v1/reddit/hockey"

      hockey_json = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(hockey_json.count).to eq(12)
    end
  end
end
