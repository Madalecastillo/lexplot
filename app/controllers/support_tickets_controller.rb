class SupportTicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def new
      @ticket=Support_ticket.new()
  end

  def create
      @ticket=Support_ticket.new(ticket_params)
      if @ticket.save
          redirect_to support_tickets_path
      else
          render :new 
      end
  end

  def update
      if @ticket.update(ticket_params)
          redirect_to support_tickets_path
      else
          render :edit 
      end
  end

  def destroy
        @ticket.destroy
        redirect_to support_tickets_path
  end

  def edit
  end

  def show
  end

  def index
     @tickets=Support_ticket.all
  end

   private
      def set_ticket
          @ticket = Support_ticket.find(params[:id])
      end 

      def ticket_params
          params.require(:support_ticket).permit(:contract_id, :manager_id, :description, :created_at)
      end
end

