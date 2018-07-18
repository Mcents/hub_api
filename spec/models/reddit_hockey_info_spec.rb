require 'rails_helper'

describe RedditHockeyInfo do
  context "#hockey_info" do
    it "it returns r/reddit hockey info" do

      hockey = RedditHockeyInfo.new.hockey_info_hash

      expect(hockey.count).to eq(12)
    end
  end
end
