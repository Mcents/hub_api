require 'rails_helper'

describe RedditService do
  context '#soccer_info' do
    it 'returns r/soccer feed' do
      VCR.use_cassette("soccer_info") do

        soccer_info = RedditService.new.soccer_feed
        require 'pry';binding.pry

        expect(soccer_info.class).to eq(Hash)
        expect(soccer_info).to have_key("data")
      end
    end
  end

  context '#hockey_info' do
    it 'returns r/hockey feed' do
      VCR.use_cassette("hocker_info") do

        hockey_info = RedditService.new.hockey_feed

        expect(hockey_info.class).to eq(Hash)
        expect(hockey_info).to have_key("data")
      end
    end
  end
end
