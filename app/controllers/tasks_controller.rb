class TasksController < ApplicationController
  def index
    @tasks = Task.where(project_id: @project.id).all
  end

  # def show
  #   @task = Task.where(project_id: @project.id)[:id]
  # end
end
