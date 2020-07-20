class RequestImputationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request_imputation, only: [:show, :edit, :update, :destroy]
  before_action :set_request, only: [:new, :index,  :edit, :update, :destroy]

  layout "dashboard"
  # GET /request_imputations
  # GET /request_imputations.json
  def index
    
    @request_imputations = RequestImputation.where(id: @request.id)
  end

  # GET /request_imputations/1
  # GET /request_imputations/1.json
  def show
  end

  # GET /request_imputations/new
  def new
    @tasks = Task.all
    @task_statuses = TaskStatus.all
    @services = Service.all
    role_ids = Role.where("name NOT IN (?)", ["superuser"]).map {|role| role.id}
    @receivers = User.where("role_id NOT IN (?)", role_ids).map {|user| user.profile}
    
    @request_imputation = RequestImputation.new
  end

  # GET /request_imputations/1/edit
  def edit
    @tasks = Task.all
    @task_statuses = TaskStatus.all
    @services = Service.all
    role_ids = Role.where("name NOT IN (?)", ["superuser"]).map {|role| role.id}
    @receivers = User.where("role_id NOT IN (?)", role_ids).map {|user| user.profile}
  end

  # POST /request_imputations
  # POST /request_imputations.json
  def create
    @request_imputation = current_user.request_imputations.build(request_imputation_params)

    respond_to do |format|
      if @request_imputation.save
        format.html { redirect_to request_imputations_path(ruid: Request.find(@request_imputation.request_id).uid), notice: 'Request imputation was successfully created.' }
        format.json { render :show, status: :created, location: @request_imputation }
      else
        @tasks = Task.all
    @task_statuses = TaskStatus.all
    @services = Service.all
    role_ids = Role.where("name NOT IN (?)", ["superuser"]).map {|role| role.id}
    @receivers = User.where("role_id NOT IN (?)", role_ids).map {|user| user.profile}
    
        format.html { render :new }
        format.json { render json: @request_imputation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_imputations/1
  # PATCH/PUT /request_imputations/1.json
  def update
    respond_to do |format|
      if @request_imputation.update(request_imputation_params)
        format.html { redirect_to request_imputations_path(ruid: Request.find(@request_imputation.request_id).uid), notice: 'Request imputation was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_imputation }
      else
        
        format.html { render :edit }
        format.json { render json: @request_imputation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_imputations/1
  # DELETE /request_imputations/1.json
  def destroy
    @request_imputation.destroy
    respond_to do |format|
      format.html { redirect_to request_imputations_url, notice: 'Request imputation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_imputation
      @request_imputation = RequestImputation.find(params[:id])
    end

    def set_request
      @request = Request.find_by(uid: params[:ruid])
    end

    # Only allow a list of trusted parameters through.
    def request_imputation_params
      params.require(:request_imputation).permit(:service_id, :receiver_id, :request_id, request_imputation_items_attributes: [:id, :task_id, :start_date, :end_date, :description, :task_status_id, :_destroy])
    end
end
