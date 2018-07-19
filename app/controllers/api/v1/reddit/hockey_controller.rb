class Api::V1::Reddit::HockeyController < ApplicationController

  def index
    render json: RedditHockeyInfo.new.hockey_info_hash
  end
end
