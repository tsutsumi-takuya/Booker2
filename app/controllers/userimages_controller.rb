class UserimagesController < ApplicationController

	def new

	    @users_image = Userimage.new

	end

	def create

	    @user_image = Userimage.new(user_image_params)
	    @user_image.user_id = current_user.id
	    @user_image.save
	    redirect_to user_images_path

	end

	private

	def post_image_params

	    params.require(:post_image).permit(:shop_name, :image, :caption)

	end

end
