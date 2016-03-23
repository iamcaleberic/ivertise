class UsersController < ApplicationController
  def index
  end

  def photos
    user = User.find(params[:id])
    @photos = user.photos
  end


end
