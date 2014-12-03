class OrganizationsController < ApplicationController
  def show
  	@organization = Organization.find(params[:id])
  	#render 'organizations/show'
  	#render 'views/organizations/show'
  end
end
