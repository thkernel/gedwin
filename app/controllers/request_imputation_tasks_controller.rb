class RequestImputationTasksController < ApplicationController
  before_action :set_request_imputation_task, only: [:show, :edit, :update, :destroy]

  # GET /request_imputation_tasks
  # GET /request_imputation_tasks.json
  def index
    @request_imputation_tasks = RequestImputationTask.all
  end

  # GET /request_imputation_tasks/1
  # GET /request_imputation_tasks/1.json
  def show
  end

  # GET /request_imputation_tasks/new
  def new
    @request_imputation_task = RequestImputationTask.new
  end

  # GET /request_imputation_tasks/1/edit
  def edit
  end

  # POST /request_imputation_tasks
  # POST /request_imputation_tasks.json
  def create
    @request_imputation_task = RequestImputationTask.new(request_imputation_task_params)

    respond_to do |format|
      if @request_imputation_task.save
        format.html { redirect_to @request_imputation_task, notice: 'Request imputation task was successfully created.' }
        format.json { render :show, status: :created, location: @request_imputation_task }
      else
        format.html { render :new }
        format.json { render json: @request_imputation_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_imputation_tasks/1
  # PATCH/PUT /request_imputation_tasks/1.json
  def update
    respond_to do |format|
      if @request_imputation_task.update(request_imputation_task_params)
        format.html { redirect_to @request_imputation_task, notice: 'Request imputation task was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_imputation_task }
      else
        format.html { render :edit }
        format.json { render json: @request_imputation_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_imputation_tasks/1
  # DELETE /request_imputation_tasks/1.json
  def destroy
    @request_imputation_task.destroy
    respond_to do |format|
      format.html { redirect_to request_imputation_tasks_url, notice: 'Request imputation task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_imputation_task
      @request_imputation_task = RequestImputationTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_imputation_task_params
      params.require(:request_imputation_task).permit(:task_type_id, :title, :description, :start_date, :end_date, :closing_date, :task_status_id, :request_imputation_id, :user_id)
    end
end
