class TaskTimeTrackingsController < ApplicationController
  before_action :set_task_time_tracking, only: [:show, :edit, :update, :destroy]

  # GET /task_time_trackings
  # GET /task_time_trackings.json
  def index
    @task_time_trackings = TaskTimeTracking.all
  end

  # GET /task_time_trackings/1
  # GET /task_time_trackings/1.json
  def show
  end

  # GET /task_time_trackings/new
  def new
    @task_time_tracking = TaskTimeTracking.new
  end

  # GET /task_time_trackings/1/edit
  def edit
  end

  # POST /task_time_trackings
  # POST /task_time_trackings.json
  def create
    @task_time_tracking = TaskTimeTracking.new(task_time_tracking_params)

    respond_to do |format|
      if @task_time_tracking.save
        format.html { redirect_to @task_time_tracking, notice: 'Task time tracking was successfully created.' }
        format.json { render :show, status: :created, location: @task_time_tracking }
      else
        format.html { render :new }
        format.json { render json: @task_time_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_time_trackings/1
  # PATCH/PUT /task_time_trackings/1.json
  def update
    respond_to do |format|
      if @task_time_tracking.update(task_time_tracking_params)
        format.html { redirect_to @task_time_tracking, notice: 'Task time tracking was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_time_tracking }
      else
        format.html { render :edit }
        format.json { render json: @task_time_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_time_trackings/1
  # DELETE /task_time_trackings/1.json
  def destroy
    @task_time_tracking.destroy
    respond_to do |format|
      format.html { redirect_to task_time_trackings_url, notice: 'Task time tracking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_time_tracking
      @task_time_tracking = TaskTimeTracking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_time_tracking_params
      params.require(:task_time_tracking).permit(:imputation_item_id, :start_date, :end_date, :status)
    end
end
