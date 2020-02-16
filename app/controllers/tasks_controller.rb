class TasksController < ApplicationController

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to root_path
  end

  private

  def tasks_params
    params.require(:task).permit(:description, :deadline, :project_id)
  end
end
