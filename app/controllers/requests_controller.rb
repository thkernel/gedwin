class RequestsController < ApplicationController

  before_action :authenticate_user! unless :front_origin?
  before_action :front_origin!, only: [:new]
  before_action :set_request, only: [:show, :edit, :update, :destroy]
 
  # GET /requests
  # GET /requests.json
  def index

    @requests = Request.all
    render layout: "dashboard"
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request_types = RequestType.all
    @request = Request.new
    render layout: "dashboard"
  end

  def new_front_request
    @request_types = RequestType.all
    @request = Request.new
    render layout: "front"
  end

  # GET /requests/1/edit
  def edit
    @request_types = RequestType.all
    render  layout: "dashboard"
  end

  def front_request_success
    render layout: "front"
  end

  # POST /requests
  # POST /requests.json
  def create
    if current_user.present?
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
    else 
      @request = Request.new(request_params)

      respond_to do |format|
        if   @request.save
          
          format.html { redirect_to front_request_success_path, notice: 'Request was successfully created.' }
          format.json { render :show, status: :created, location: @request }
          
        else
          @request_types = RequestType.all
          format.html { render :new_front_request }
          format.json { render json: @request.errors, status: :unprocessable_entity }
          
        end
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
      params.require(:request).permit(:request_type_id, :first_name, :last_name, :gender, :born_date, :born_place, :academic_year, :grade, :specialty, :request_date, :identification_number, :description, :status)
    end

    def front_origin?
      origin = params[:origin]

      if origin.present? && origin == "front"
        @@front_origin ||= true
        true
      else
        @@front_origin ||= false
        false
      end
      
    end

    
end
