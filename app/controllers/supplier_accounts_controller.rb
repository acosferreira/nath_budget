class SupplierAccountsController < ApplicationController
  # GET /supplier_accounts
  # GET /supplier_accounts.json
  def index
    @supplier_accounts = SupplierAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @supplier_accounts }
    end
  end

  # GET /supplier_accounts/1
  # GET /supplier_accounts/1.json
  def show
    @supplier_account = SupplierAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @supplier_account }
    end
  end

  # GET /supplier_accounts/new
  # GET /supplier_accounts/new.json
  def new
    @supplier_account = SupplierAccount.new
  if params
    @supplier_account.supplier_id = params[:supplier] 
  end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @supplier_account }
    end
  end

  # GET /supplier_accounts/1/edit
  def edit
    @supplier_account = SupplierAccount.find(params[:id])
  end

  # POST /supplier_accounts
  # POST /supplier_accounts.json
  def create
    @supplier_account = SupplierAccount.new(params[:supplier_account])

    respond_to do |format|
      if @supplier_account.save
        format.html { redirect_to @supplier_account, notice: 'Supplier account was successfully created.' }
        format.json { render json: @supplier_account, status: :created, location: @supplier_account }
      else
        format.html { render action: "new" }
        format.json { render json: @supplier_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /supplier_accounts/1
  # PUT /supplier_accounts/1.json
  def update
    @supplier_account = SupplierAccount.find(params[:id])

    respond_to do |format|
      if @supplier_account.update_attributes(params[:supplier_account])
        format.html { redirect_to @supplier_account, notice: 'Supplier account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @supplier_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_accounts/1
  # DELETE /supplier_accounts/1.json
  def destroy
    @supplier_account = SupplierAccount.find(params[:id])
    @supplier_account.destroy

    respond_to do |format|
      format.html { redirect_to supplier_accounts_url }
      format.json { head :no_content }
    end
  end
end
