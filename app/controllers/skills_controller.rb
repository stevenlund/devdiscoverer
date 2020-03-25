class SkillsController < ApplicationController
  before_action :set_developer
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  # GET developers/1/skills
  def index
    @skills = @developer.skills
  end

  # GET developers/1/skills/1
  def show
  end

  # GET developers/1/skills/new
  def new
    @skill = @developer.skills.build
  end

  # GET developers/1/skills/1/edit
  def edit
  end

  # POST developers/1/skills
  def create
    @skill = @developer.skills.build(skill_params)

    if @skill.save
      redirect_to([@skill.developer, @skill], notice: 'Skill was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT developers/1/skills/1
  def update
    if @skill.update_attributes(skill_params)
      redirect_to([@skill.developer, @skill], notice: 'Skill was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE developers/1/skills/1
  def destroy
    @skill.destroy

    redirect_to developer_skills_url(@developer)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_developer
      @developer = Developer.find(params[:developer_id])
    end

    def set_skill
      @skill = @developer.skills.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skill_params
      params.require(:skill).permit(:name)
    end
end
