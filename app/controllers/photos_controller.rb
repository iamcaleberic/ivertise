class PhotosController < ApplicationController
  before_action :authenticate_user!, except: [:index] 
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index    
    @photos = Photo.all
    #temporary search
    @photos = Photo.where(["title LIKE ?","%#{params[:search]}%"])
    #interfering with index if not registered or logged in. Check later and fix
    #It should allow you to search through
    @user = current_user.id
    @pic = Photo.where(:user_id => "#{current_user.id}")

    @picha = [{:title => '', :description => '', :thumbnail => '', :large => ''}]

    # @photos = Photo.find_by(:user_id => @user)
=begin
    if params[:search]
      @photos = Photo.search(params[:search]).order("created_at DESC")
    else
      @photos = Photo.all.order('created_at DESC')
    end
=end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    @user = User.new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        # sends message to admin
        
        format.html { redirect_to root_path, notice: 'Photo was successfully created.' }
        # format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        # format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
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
