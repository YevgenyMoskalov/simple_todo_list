class ProjectsController < ApplicationController
  def index
    @projects = Project.where(user_id: current_user.id).all
  end
end
