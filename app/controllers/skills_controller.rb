class SkillsController < ApplicationController
  def show
  	@skill = Skill.find(params[:id])
    #@user =  User.find(params[:user_id])
  	#render 'organizations/show'
  	#render 'views/organizations/show'
  end
  def new
  	@skill = Skill.new
  end
  def create
  	@skill = Skill.new(skill_params)

  	if @skill.save
  		redirect_to '/', notice: 'Skill Created'
  	else
  		flash[:notice] = @skill.errors.full_message.to_sentence
  		render 'new'
  	end
  end

  private
  def skill_params
  	params.require(:skill).permit(:name, :user_id)
  end
end
