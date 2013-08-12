class SupplierContractsController < ApplicationController
  # GET /supplier_contracts
  # GET /supplier_contracts.json
  def index
    @supplier_contracts = SupplierContract.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplier_contracts }
    end
  end

  # GET /supplier_contracts/1
  # GET /supplier_contracts/1.json
  def show
    @supplier_contract = SupplierContract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplier_contract }
    end
  end

  # GET /supplier_contracts/new
  # GET /supplier_contracts/new.json
  def new
    @supplier_contract = SupplierContract.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplier_contract }
    end
  end

  # GET /supplier_contracts/1/edit
  def edit
    @supplier_contract = SupplierContract.find(params[:id])
  end

  # POST /supplier_contracts
  # POST /supplier_contracts.json
  def create
    @supplier_contract = SupplierContract.new(params[:supplier_contract])
    respond_to do |format|
      if @supplier_contract.save
        format.html { redirect_to @supplier_contract, notice: 'Supplier contract was successfully created.' }
        format.json { render json: @supplier_contract, status: :created, location: @supplier_contract }
      else
        format.html { render action: "new" }
        format.json { render json: @supplier_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplier_contracts/1
  # PUT /supplier_contracts/1.json
  def update
    @supplier_contract = SupplierContract.find(params[:id])

    respond_to do |format|
      if @supplier_contract.update_attributes(params[:supplier_contract])
        format.html { redirect_to @supplier_contract, notice: 'Supplier contract was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplier_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_contracts/1
  # DELETE /supplier_contracts/1.json
  def destroy
    @supplier_contract = SupplierContract.find(params[:id])
    @supplier_contract.destroy

    respond_to do |format|
      format.html { redirect_to supplier_contracts_url }
      format.json { head :no_content }
    end
  end
end
