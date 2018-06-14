require 'rails_helper'

describe RedditService do
  context '#soccer_info' do
    it 'returns r/soccer feed' do
      VCR.use_cassette("soccer_info") do

        soccer_info = RedditService.new.soccer_info

        expect(soccer_info.class).to eq(Hash)
      end
    end
  end
end
