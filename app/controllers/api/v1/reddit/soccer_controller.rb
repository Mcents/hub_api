class Api::V1::Reddit::SoccerController < ApplicationController

  def index
    render json: RedditInfo.new.soccer_info_hash
  end

end
