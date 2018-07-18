require 'rails_helper'

describe RedditService do
  context '#soccer_info' do
    it 'returns r/soccer feed' do
      VCR.use_cassette("soccer_info") do

        soccer_info = RedditService.new.soccer_feed

        expect(soccer_info.class).to eq(Hash)
      end
    end
  end

  context '#hockey_info' do
    it 'returns r/hockey feed' do
      VCR.use_cassette("hocker_info") do

        soccer_info = RedditService.new.hockey_feed

        expect(soccer_info.class).to eq(Hash)
      end
    end
  end
end
