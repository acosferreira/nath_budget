class ManagerAccountsController < ApplicationController
  # GET /manager_accounts
  # GET /manager_accounts.json
  def index
    @manager_accounts = ManagerAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @manager_accounts }
    end
  end

  # GET /manager_accounts/1
  # GET /manager_accounts/1.json
  def show
    @manager_account = ManagerAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manager_account }
    end
  end

  # GET /manager_accounts/new
  # GET /manager_accounts/new.json
  def new
    @manager_account = ManagerAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @manager_account }
    end
  end

  # GET /manager_accounts/1/edit
  def edit
    @manager_account = ManagerAccount.find(params[:id])
  end

  # POST /manager_accounts
  # POST /manager_accounts.json
  def create
    @manager_account = ManagerAccount.new(params[:manager_account])

    respond_to do |format|
      if @manager_account.save
        format.html { redirect_to @manager_account, notice: 'Manager account was successfully created.' }
        format.json { render json: @manager_account, status: :created, location: @manager_account }
      else
        format.html { render action: "new" }
        format.json { render json: @manager_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /manager_accounts/1
  # PUT /manager_accounts/1.json
  def update
    @manager_account = ManagerAccount.find(params[:id])

    respond_to do |format|
      if @manager_account.update_attributes(params[:manager_account])
        format.html { redirect_to @manager_account, notice: 'Manager account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @manager_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manager_accounts/1
  # DELETE /manager_accounts/1.json
  def destroy
    @manager_account = ManagerAccount.find(params[:id])
    @manager_account.destroy

    respond_to do |format|
      format.html { redirect_to manager_accounts_url }
      format.json { head :no_content }
    end
  end
end
