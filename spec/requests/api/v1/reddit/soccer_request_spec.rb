require 'rails_helper'

describe 'SoccerController' do
  context "soccer_info" do
    it "returns the top posts for r/soccer" do

      RedditService.new.soccer_feed

      get "/api/v1/reddit/soccer"

      soccer_json = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(soccer_json.count).to eq(12)
    end
  end
end
