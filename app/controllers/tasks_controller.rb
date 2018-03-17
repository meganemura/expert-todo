class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.where(user_id: current_user.id, id: params[:id]).first
  end

  def update
    @task = Task.where(user_id: current_user.id, id: params[:id]).first
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def destroy
    @task = Task.where(user_id: current_user.id, id: params[:id]).first
    if @task.destroy
      redirect_to tasks_path
    else
      redirect_to tasks_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :due_date)
  end
end
