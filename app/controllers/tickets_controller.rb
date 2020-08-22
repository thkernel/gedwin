class TicketsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = current_user.tickets.build(ticket_params)

    respond_to do |format|
      if @ticket.save
        @tickets = Ticket.all
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @ticket }
        format.js
      else
        format.html { render :new }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        @tickets = Ticket.all
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  def delete
    @ticket = Ticket.find(params[:ticket_id])
  end


  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html { redirect_to tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:title, :status, :priority, :content, :due_date, :start_date, :completed_date, files: [])
    end
end
