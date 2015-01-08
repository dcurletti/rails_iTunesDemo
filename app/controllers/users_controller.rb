class UsersController < ApplicationController

	before_action :authenticate

	def new
		@user = User.new()
	end

	def create
		@user = User.new(user_params)
		if @user.save
			log_in_user!(@user)
			redirect_to :root
		else
			flash.now[:error] = "Unable to create user"
			render :new
		end
	end

	def index
		@users = User.all
	end

	private
	def user_params
		params.require(:user).permit(:email, :password)
	end

end
