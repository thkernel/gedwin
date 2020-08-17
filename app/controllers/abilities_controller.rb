class AbilitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ability, only: [:show, :edit, :update, :destroy]

  layout "dashboard"
  # GET /abilities
  # GET /abilities.json
  def index
    @abilities = Ability.all
  end

  # GET /abilities/1
  # GET /abilities/1.json
  def show
  end

  # GET /abilities/new
  def new
    @features = Feature.all 
    @roles = Role.all 
    @permissions = Permission.all
    @ability = Ability.new
  end

  # GET /abilities/1/edit
  def edit
    @features = Feature.all 
    @roles = Role.all 
    @permissions = Permission.all
    permissions = @ability.ability_items

    @selected_permissions = permissions unless permissions.blank?

  end

  # POST /abilities
  # POST /abilities.json
  def create
    @ability = Ability.new(ability_params)

     # Create Scholarship study levels
     params[:permissions][:id].each do |permission|
      unless permission.empty?
        @ability.ability_items.build(permission_id: permission)
      end
    end

    respond_to do |format|
      if @ability.save
        @abilities = Ability.all
        format.html { redirect_to @ability, notice: 'Ability was successfully created.' }
        format.json { render :show, status: :created, location: @ability }
        format.js
      else
        format.html { render :new }
        format.json { render json: @ability.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /abilities/1
  # PATCH/PUT /abilities/1.json
  def update
    @ability.ability_items.delete_all
     # Create Scholarship study levels
     params[:permissions][:id].each do |permission|
      unless permission.empty?
        @ability.ability_items.build(permission_id: permission)
      end
    end

    respond_to do |format|
      if @ability.update(ability_params)
        @abilities = Ability.all
        format.html { redirect_to @ability, notice: 'Ability was successfully updated.' }
        format.json { render :show, status: :ok, location: @ability }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @ability.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /abilities/1
  # DELETE /abilities/1.json
  def destroy
    @ability.destroy
    respond_to do |format|
      format.html { redirect_to abilities_url, notice: 'Ability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ability
      @ability = Ability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ability_params
      params.require(:ability).permit(:role_id, :feature_id, :status)
    end
end
