class ContractsController < ApplicationController
  	before_action :set_contract, only: [:show, :edit, :update, :destroy]

  	def new
		@contract=Contract.new()
	end

	def create
	    @contract=Contract.new(contract_params)
	    if @contract.save
	        redirect_to contracts_path()
	    else
	        render :new
	    end
	end

	def update
	    if @contract.update(contract_params)
	        redirect_to contracts_path()
	    else
	        render :edit
	    end
	end

	def destroy	
		@contract.destroy
	    redirect_to contracts_path()
	end

	def edit
	end

	def show
	end

	def index
	   @contracts=Contract.all
	end

	private
	    def set_contract
	        @contract = contract.find(params[:id])
	    end

	    def contract_params
	        params.require(:contract).permit(
	        	:code_contract, 
	        	:coments,
	        	:date_exp, 
	        	:date_act, 
	        	:price, 
	        	:paynumber, 
	        	:status, 
	        	:product_id, 
	        	:user_id,
	        	:created_at
	        )
	    end
end

