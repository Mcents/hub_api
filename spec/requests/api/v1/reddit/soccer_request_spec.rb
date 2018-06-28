require 'rails_helper'

describe 'SoccerController' do
  context "soccer_info" do
    it "returns the top posts for r/soccer" do

      RedditService.new.soccer_info

      get "/api/v1/reddit/soccer"

      merchant_json = JSON.parse(response.body)
      require 'pry';binding.pry

      expect(response).to be_success
      expect(merchant_json['id']).to eq(merchant1.id)
    end
  end
end
