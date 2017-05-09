class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
  end

  def show
    # store as instance varaibles so you can access the nested /task/:id route in form
    @task = Task.find(params[:id])

  end

  def create
    task = Task.create(task_params)

    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task_updated = Task.find(params[:id]).update_attributes(post_params)
    redirect_to tasks_path
  end

  def destroy
    destroyed_task = Task.find(params[:id]).destroy
    redirect_to tasks_path
  end

  private
  #"strong parameters" used in mass-assignment per above code
  # also increases security - we will only support these parameters - server will not recognize other parameters than these listed below:
  def task_params
    params
    .require(:task)
    .permit(:task, :author)
  end

end

# if model method is empty - renders template
# for create - we need some functionality
