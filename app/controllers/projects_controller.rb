class ProjectsController < ApplicationController
  def index
    @projects = Project.where(user_id: current_user.id).all
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
  end


  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.save
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
