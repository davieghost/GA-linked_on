class OccupationController < ApplicationController

	def new
		@occupation = Occupation.new
	end
	def create
		@occupation = Occupation.new(occupation_params)

	    if @occupation.save
	      redirect_to '/', notice: 'Awesome!'
	    else
	      flash[:notice] =  @occupation.errors.full_messages.to_sentence
	      render 'new'
    	end
	end
	private
	def occupation_params
		params.require(:occupation).permit(:title, :user_id)
	end
end