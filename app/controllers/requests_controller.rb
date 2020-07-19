class RequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_request, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request_types = RequestType.all
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = current_user.requests.build(request_params)

    respond_to do |format|
      if @request.save
        @requests = Request.all
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
        format.js
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        @requests = Request.all
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  def delete
    @request = Request.find(params[:request_id])
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:request_type_id, :first_name, :last_name, :gender, :born_date, :born_place, :academic_year, :grade, :specialty, :request_date, :description, :status)
    end
end
