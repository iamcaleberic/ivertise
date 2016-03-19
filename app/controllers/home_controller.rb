class HomeController < ApplicationController
  def index
  	@user = User.new
  end

  def upload_photo
  	respond_to do |format|
  		format.js
  	end
  end
end
