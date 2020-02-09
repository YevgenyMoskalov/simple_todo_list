class ProjectsController < ApplicationController
  def index
    @projects = Project.where(user_id: current_user.id).all
  end

  def show
    @tasks = Task.where(project_id: project_url).all
  end
end
