class HomeController < ApplicationController
  def index
  	@user = User.new
  	@messages = Message.all
    if user_signed_in?
      redirect_to photos_path(current_user.id)
    end
  end
end
