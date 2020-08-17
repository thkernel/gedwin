class AbilityItemsController < ApplicationController
  before_action :set_ability_item, only: [:show, :edit, :update, :destroy]

  # GET /ability_items
  # GET /ability_items.json
  def index
    @ability_items = AbilityItem.all
  end

  # GET /ability_items/1
  # GET /ability_items/1.json
  def show
  end

  # GET /ability_items/new
  def new
    @ability_item = AbilityItem.new
  end

  # GET /ability_items/1/edit
  def edit
  end

  # POST /ability_items
  # POST /ability_items.json
  def create
    @ability_item = AbilityItem.new(ability_item_params)

    respond_to do |format|
      if @ability_item.save
        format.html { redirect_to @ability_item, notice: 'Ability item was successfully created.' }
        format.json { render :show, status: :created, location: @ability_item }
      else
        format.html { render :new }
        format.json { render json: @ability_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ability_items/1
  # PATCH/PUT /ability_items/1.json
  def update
    respond_to do |format|
      if @ability_item.update(ability_item_params)
        format.html { redirect_to @ability_item, notice: 'Ability item was successfully updated.' }
        format.json { render :show, status: :ok, location: @ability_item }
      else
        format.html { render :edit }
        format.json { render json: @ability_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ability_items/1
  # DELETE /ability_items/1.json
  def destroy
    @ability_item.destroy
    respond_to do |format|
      format.html { redirect_to ability_items_url, notice: 'Ability item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ability_item
      @ability_item = AbilityItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ability_item_params
      params.require(:ability_item).permit(:ability_id, :permission_id, :status)
    end
end
