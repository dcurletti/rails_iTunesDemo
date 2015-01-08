class SessionsController < ApplicationController
	before_action :authenticate, only: [:destroy]

	def new
		@user = User.new()
	end

	def create
		user = User.find_by_credentials(params[:user][:email], params[:user][:password])
		@user = User.new(email: params[:user][:email])
		if !user.nil?
			log_in_user!(user)
			redirect_to :root, notice: "Welcome back #{user.email}"
		else
			flash.now[:error] = "No such user"
			render :new
		end
	end

	def destroy
		log_out!
		redirect_to new_session_url, notice: "Successfully logged out!"
	end

end
