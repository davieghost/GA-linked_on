class UsersController < ApplicationController
	def index
		@users = User.all
		@organization = Organization.all
		@skill = Skill.all
	end

	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)

	    if @user.save
	      redirect_to '/', notice: 'Awesome!'
	    else
	      flash[:notice] =  @user.errors.full_messages.to_sentence
	      render 'new'
    	end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@users = User.find(params[:id])
	end

	def update
		@users = User.find(params[:id])
		puts @users

		if @users.update_attributes(user_params)
			redirect_to '/'
			puts 'saved'
		else
			puts 'not'
			flash[:notice] = @users.errors.full_messages.to_sentence
			render :edit
		end
	end

	private

  	def user_params
  	  params.require(:user).permit(:name, :email, :organization_id, :password, :password_confirmation)
  	end

end