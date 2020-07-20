class RequestImputationItemsController < ApplicationController
  before_action :set_request_imputation_task, only: [:show, :edit, :update, :destroy]

  # GET /request_imputation_tasks
  # GET /request_imputation_tasks.json
  def index
    @request_imputation_items = RequestImputationItem.all
  end

  # GET /request_imputation_tasks/1
  # GET /request_imputation_tasks/1.json
  def show
  end

  # GET /request_imputation_tasks/new
  def new
    @request_imputation_item = RequestImputationItem.new
  end

  # GET /request_imputation_tasks/1/edit
  def edit
  end

  # POST /request_imputation_tasks
  # POST /request_imputation_tasks.json
  def create
    @request_imputation_item = RequestImputationItem.new(request_imputation_task_params)

    respond_to do |format|
      if @request_imputation_item.save
        format.html { redirect_to @request_imputation_item, notice: 'Request imputation task was successfully created.' }
        format.json { render :show, status: :created, location: @request_imputation_item }
      else
        format.html { render :new }
        format.json { render json: @request_imputation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_imputation_tasks/1
  # PATCH/PUT /request_imputation_tasks/1.json
  def update
    respond_to do |format|
      if @request_imputation_item.update(request_imputation_item_params)
        format.html { redirect_to @request_imputation_item, notice: 'Request imputation task was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_imputation_item }
      else
        format.html { render :edit }
        format.json { render json: @request_imputation_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_imputation_tasks/1
  # DELETE /request_imputation_tasks/1.json
  def destroy
    @request_imputation_item.destroy
    respond_to do |format|
      format.html { redirect_to request_imputation_items_url, notice: 'Request imputation task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_imputation_item
      @request_imputation_item = RequestImputationItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_imputation_item_params
      params.require(:request_imputation_item).permit(:task_id, :title, :description, :start_date, :end_date, :closing_date, :task_status_id, :request_imputation_id, :user_id)
    end
end
