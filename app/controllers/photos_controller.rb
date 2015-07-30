class PhotosController < ApplicationController
	before_action :check_user, only: [:update, :destroy, :edit]

	def index
		@photos = Photo.all.order(created_at: :desc)
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = current_user.photos.build(photo_params)
		
		if @photo.save
			redirect_to photos_path
		else
			render :new
		end

	end

	def show
		@photo = Photo.find(params[:id])
		unless @photo.public || current_user == @photo.user
			redirect_to photos_path
		end
	end

	def edit 
		@photo = current_user.photos.find(params[:id])
	end

	def update
		@photo = current_user.photos.find(params[:id])

		if @photo.update(photo_params)
			redirect_to photo_path(@photo)
		else
			render :edit
		end
	end

	def destory
		@photo = Photo.find(params[:id])
		@photo.destroy
		redirect_to photos_path
	end

	private

	def photo_params
		params.require(:photo).permit(:caption, :image, :public)
	end

end