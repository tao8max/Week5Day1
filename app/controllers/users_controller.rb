class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		User.create params[:user]
		redirect_to login_form_path
	end

	def show
		@user=User.find params[:id]
	end


	def login_form
		@user = User.new
	end

	def login
		@user=User.where(email: params[:user][:email]).first
		if @user && @user.password == params[:user][:password]
			session[:user_id]=@user.id
			redirect_to home_path
		else
			flash[:alert]="Wrong email and/or password"
			redirect_to login_form_path
		end
	end

	def edit
		@user=User.find(params[:id])
	end

	def update
		@user=User.find(params[:id])
		@user.update_attributes params[:user]
		redirect_to edit_user_path
	end

	def logout
		if session[:user_id]
			session[:user_id]=nil
			redirect_to home_path
		else
			redirect_to home_path
		end
	end

	def index
		@users=User.all
	end
end
end
