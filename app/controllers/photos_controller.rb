class PhotosController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = current_user.photos.build(photo_params)

		if @photo.save
			redirect_to photos_path
		else
			renders :new
		end

	end

	private

	def photo_params
		params.require(:photo).permit(:caption, :image, :public)
	end

end