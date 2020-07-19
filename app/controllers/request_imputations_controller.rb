class RequestImputationsController < ApplicationController
  before_action :set_request_imputation, only: [:show, :edit, :update, :destroy]

  # GET /request_imputations
  # GET /request_imputations.json
  def index
    @request_imputations = RequestImputation.all
  end

  # GET /request_imputations/1
  # GET /request_imputations/1.json
  def show
  end

  # GET /request_imputations/new
  def new
    @request_imputation = RequestImputation.new
  end

  # GET /request_imputations/1/edit
  def edit
  end

  # POST /request_imputations
  # POST /request_imputations.json
  def create
    @request_imputation = RequestImputation.new(request_imputation_params)

    respond_to do |format|
      if @request_imputation.save
        format.html { redirect_to @request_imputation, notice: 'Request imputation was successfully created.' }
        format.json { render :show, status: :created, location: @request_imputation }
      else
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
        format.html { redirect_to @request_imputation, notice: 'Request imputation was successfully updated.' }
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

    # Only allow a list of trusted parameters through.
    def request_imputation_params
      params.require(:request_imputation).permit(:service_id, :receiver_id, :request_id, :status, :user_id)
    end
end
