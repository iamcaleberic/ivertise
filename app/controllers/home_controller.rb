class HomeController < ApplicationController
  def index
  	@user = User.new
  	@messages = Message.all
    @photos = Photo.all
    if user_signed_in?
      redirect_to photos_path(current_user.id)
    end
    if admin_signed_in?
    	render 'admin/index'
    end
  end
end
