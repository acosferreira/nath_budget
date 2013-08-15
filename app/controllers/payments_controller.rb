class PaymentsController < ApplicationController
  # GET /payments
  # GET /payments.json
  
  add_breadcrumb 'Index', :payments_path
  add_breadcrumb 'Create a new payment', '', :only => [:new, :create]
  add_breadcrumb 'Edit a payment', '', :only => [:edit, :update]

  def index
    params[:month].blank? ? month= '%02d'%Date.today.month : month = '%02d'%params[:month] 
    #month = '%02d'%params[:month] || '%02d'%Date.today.month
    if ActiveRecord::Base.connection.adapter_name=='SQLite'
      @payments = Payment.find(:all,:conditions => ["strftime('%m', pay_day) = ?",month])
    else
      @payments = Payment.find(:all,:conditions => ["to_char(pay_day, 'MM') ='#{month}'"])
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @payments }
    end
  end

  
  # GET /payments/1
  # GET /payments/1.json
  def show
    @payment = Payment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @payment }
    end
  end

  # GET /payments/new
  # GET /payments/new.json
  def new
    @payment = Payment.new
    if params
      @payment.supplier_id = params[:supplier] 
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @payment }
    end
  end

  # GET /payments/1/edit
  def edit
    @payment = Payment.find(params[:id])
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(params[:payment])

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
        format.json { render json: @payment, status: :created, location: @payment }
      else
        format.html { render action: "new" }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /payments/1
  # PUT /payments/1.json
  def update
    @payment = Payment.find(params[:id])

    respond_to do |format|
      if @payment.update_attributes(params[:payment])
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy

    respond_to do |format|
      format.html { redirect_to payments_url }
      format.json { head :no_content }
    end
  end
end
