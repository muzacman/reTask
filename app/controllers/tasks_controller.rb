class TasksController < ApplicationController
  before_action :set_task_types
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :set_movement, only: [:show, :edit, :update, :destroy]


  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit

  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    movement = Movement.find(task_params[:movement_id])
    @task.build_movement(id: movement.id)

    respond_to do |format|
      if @task.save
        format.html { redirect_to edit_movement_path(@task.movement_id), notice: 'Task was successfully created.' }
        format.json { render :index, status: :created, location: @tasks }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to edit_movement_path(@task.movement_id), notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    movement_id = @task.movement_id
    @task.destroy
    respond_to do |format|
      format.html { redirect_to edit_movement_path(movement_id), notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_task_types
    @task_types = Task.task_types
  end


  private
  # Use callbacks to share common setup or constraints between actions.

  def set_movement
    @movement = Movement.find(params[:movement_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:name, :text_build, :link, :task_type, :order_number, :movement_id)
  end
end
