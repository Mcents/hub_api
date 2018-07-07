require 'rails_helper'

describe RedditSoccerInfo do
  context "#soccer_info" do
    it "it returns r/reddit soccer info" do

      soccer = RedditSoccerInfo.new.soccer_info_hash

      expect(soccer.count).to eq(12)
    end
  end
end
