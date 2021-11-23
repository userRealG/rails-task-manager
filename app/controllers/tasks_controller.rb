class TasksController < ApplicationController

# view
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end
# add
  def create
    @task = Task.new(task_params)
    @task.save
    # redirect_to task_path(@tasks)
  end
  # update/ edit

  def edit
    @tasks = Task.find(params[:id])
      # redirect_to task_path(@tasks)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def show
    @tasks = Task.find(params[:id])
  end


# remove
  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to task_path
  end
  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

# show
end
