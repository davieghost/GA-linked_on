class OrganizationsController < ApplicationController
  def show
  	@organization = Organization.find(params[:id])
  	#render 'organizations/show'
  	#render 'views/organizations/show'
  end
  def new
  	@organization = Organization.new
  end
  def create
  	@organization = Organization.new(user_params)

  	if @organization.save
  		redirect_to '/', notice: 'ORG created'
  	else
  		flash[:notice] = @organization.errors.full_messages.to_sentence
  		render 'new'
  	end

  end
  private

  def user_params
  	params.require(:organization).permit(:name)
  end
end
