require 'rails_helper'

describe RedditInfo do
  context "#soccer_info" do
    it "it returns r/reddit soccer info" do

      soccer = RedditInfo.new.soccer_info_hash

      expect(soccer.count).to eq(10)
    end
  end
end
