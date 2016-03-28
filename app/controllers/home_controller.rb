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

  def images
    @photos = Photo.all
  end
  
  def models
    @photos = Photo.all
  end
  
  def muas
    @photos = Photo.all
  end

  def photographers
    @photos = Photo.all
  end
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      #params.fetch(:photo, {:image})
      params.require(:photo).permit(:image,:release_form,:role_photo, :user_id, :title, :price, :description, :keywords, :user_id)
    end
end
