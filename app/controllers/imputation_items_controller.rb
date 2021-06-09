class ImputationItemsController < ApplicationController
  before_action :authenticate_user!
  layout "dashboard"

  
  before_action :set_imputation_item, only: [:show, :edit, :update, :destroy]
  before_action :set_imputation, only: [:index, :new, :edit]
  # GET /tasks
  # GET /tasks.json
  def index
    @imputation_items = @imputation.imputation_items
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  def search_tasks
    @imputation_items = ImputationItem.all

  end

  # GET /tasks/new
  def new
    @task_statuses = TaskStatus.all
   
    @imputation_item = Task.new
  end

  # GET /tasks/1/edit
  def edit
    #@task_statuses = TaskStatus.all
    #@task_types = TaskType.all
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @imputation_item = current_user.tasks.build(imputation_item_params)
    @imputation_item.imputation_id = @@imputation.id

    respond_to do |format|
      if @imputation_item.save
        @imputation_items = ImputationItem.where(imputation_id: @imputation_item.imputation_id)

        format.html { redirect_to imputation_tasks_path(@imputation_item.imputation_id), notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @imputation_item }
        format.js
      else
        format.html { render :new }
        format.json { render json: @imputation_item.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update


    if imputation_item_params[:status] == "En cours"
      @imputation_item.start_date = Time.now.strftime("%d/%m/%Y")
    elsif imputation_item_params[:status] == "Terminée"
      @imputation_item.completed_date = Time.now.strftime("%d/%m/%Y")
      unless imputation_item_params[:start_date].nil?
        @imputation_item.start_date = Time.now.strftime("%d/%m/%Y")
      end
    end

    respond_to do |format|
      if @imputation_item.update(imputation_item_params)
        #@imputation_items = ImputationItem.where(imputation_id: @imputation_item.imputation_id)
        @imputation = Imputation.find(@imputation_item.imputation_id)

        format.html { redirect_to show_imputation_path(@imputation.uid), notice: 'Statut modifié avec succès.' }
        format.json { render :show, status: :ok, location: @imputation_item }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @imputation_item.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  def delete
    @imputation_item = ImputationItem.find(params[:imputation_item_id])
  end




  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @imputation_item.destroy
    @imputation_items = ImputationItem.where(imputation_id: @imputation_item.imputation_id)

    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private

  def set_imputation
    @imputation_item ||= ImputationItem.find(params[:id])
    @@imputation_item = @imputation_item
  end


    # Use callbacks to share common setup or constraints between actions.
    def set_imputation_item
      @imputation_item = ImputationItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imputation_item_params
      params.require(:imputation_item).permit(:title, :description,:due_date, :status)
    end
end
