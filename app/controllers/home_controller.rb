class HomeController < ApplicationController
<<<<<<< HEAD
=======
  def index
  	@user = User.new
  	@messages = Message.all
    if user_signed_in?
      redirect_to photos_path(current_user.id)
    end
  end
>>>>>>> f315628a197f98f8ecb106cb3b6cef5c0038e1b5
end
