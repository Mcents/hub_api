class Api::V1::Reddit::SoccerController < ApplicationController

  def index
    render json: RedditSoccerInfo.new.soccer_info_hash
  end
end
