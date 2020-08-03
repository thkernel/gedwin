class ImputationsController < ApplicationController
 
  before_action :authenticate_user!
  

  before_action :set_imputation, only: [:show, :edit, :update, :destroy]
  before_action :set_arrival_mail, only: [:index, :new]
  #before_action :get_arrival_mail, only: [:create]

  layout "dashboard"
  # GET /imputations
  # GET /imputations.json
  def index
    @imputations = @arrival_mail.imputations
  end

  # GET /imputations/1
  # GET /imputations/1.json
  def show
  end

  def get_profiles
    
    if params[:data].present?
      service = Service.find(params[:data])
      puts "SERVICE: #{service.inspect}"
      @recipients = Profile.where(service_id: service.id)

      puts "RECIPIENT: #{@recipients}"
    end
  end
  # GET /imputations/new
  def new
    
    @services = Service.all
    @tasks = Task.all
    @task_statuses = TaskStatus.all
    @services = Service.all

    role_ids = Role.where("name NOT IN (?)", ["superuser"]).map {|role| role.id}
    
    puts "IDS: #{role_ids}"
    @recipients = User.where("role_id IN (?)", role_ids).map {|user| user.profile }
    puts "RECIPIENTS: #{@recipients}"
  

    puts "SOURCE URL: #{request.original_url}"
    puts "LOCATION: #{request.url}"
    @imputation = Imputation.new

  end

  # GET /imputations/1/edit
  def edit
    @services = Service.all
    @tasks = Task.all
    @task_statuses = TaskStatus.all
  
    role_ids = Role.where("name NOT IN (?)", ["superuser"]).map {|role| role.id}
    @recipients = User.where("role_id  IN (?)", role_ids).map {|user| user.profile}
    
  end

  # POST /imputations
  # POST /imputations.json
  def create

    
    @arrival_mail = ArrivalMail.find(flash[:arrival_mail]["id"])
    @imputation = current_user.imputations.build(imputation_params)
    @imputation.imputable = @arrival_mail
    

    respond_to do |format|
      if @imputation.save
        @imputations = @arrival_mail.imputations
        
        format.html { redirect_to imputations_path(amuid: ArrivalMail.find(@arrival_mail.id).uid), notice: 'Imputation was successfully created.' }
        format.json { render :show, status: :created, location: @imputation }
        format.js
      else
       
        format.html { render :new }
        format.json { render json: @imputation.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /imputations/1
  # PATCH/PUT /imputations/1.json
  def update


   

    respond_to do |format|
      if @imputation.update(imputation_params)
        #@imputations = Imputation.where(arrival_mail_id: @imputation.arrival_mail_id)
        format.html { redirect_to imputations_path(amuid: ArrivalMail.find(@imputation.imputable_id).uid), notice: 'Imputation was successfully updated.' }
        format.json { render :show, status: :ok, location: @imputation }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @imputation.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  def delete
    @imputation = Imputation.find(params[:imputation_id])
  end


  # DELETE /imputations/1
  # DELETE /imputations/1.json
  def destroy
    @imputation.destroy
    respond_to do |format|
      format.html { redirect_to imputations_path(amuid: ArrivalMail.find(@imputation.imputable_id).uid), notice: 'Imputation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imputation
      @imputation = Imputation.find(params[:id])
    end

    def set_arrival_mail
      @arrival_mail ||= ArrivalMail.find_by(uid: params[:amuid])
      flash[:arrival_mail] = @arrival_mail
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imputation_params
      params.require(:imputation).permit(:service_id, :recipient_id,  imputation_items_attributes: [:id, :task_id, :start_date, :end_date, :description, :task_status_id, :_destroy])
    end
end
