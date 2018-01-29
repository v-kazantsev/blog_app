class SkillsController < ApplicationController
  before_action :set_skill, only: [:edit, :udate, :destroy]
  def index
    @skills = Skill.all
  end
  def new
    @skill = Skill.new
  end
  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to skills_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @skill.update
      redirect_to skills_path
    else
      render :edit
    end
  end
  def destroy
    @skill.delete
    redirect_to skills_path
  end
  private
  def set_skill
    @skill = Skill.find(params[:id])
  end
  def skill_params
    params.require(:skill).permit(:title, :badge, :percent)
  end
end
