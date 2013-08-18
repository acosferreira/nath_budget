class CompetenceCentersController < ApplicationController
  # GET /competence_centers
  # GET /competence_centers.json
  
  add_breadcrumb 'Index', :competence_centers_path
  add_breadcrumb 'Create a new competence centers', '', :only => [:new, :create]
  add_breadcrumb 'Edit a competence center', '', :only => [:edit, :update]

  def index
    @search = CompetenceCenter.search(params[:q])
    @competence_centers = @search.result
    
   # @competence_centers = CompetenceCenter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competence_centers }
    end
  end

  # GET /competence_centers/1
  # GET /competence_centers/1.json
  def show
    @competence_center = CompetenceCenter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competence_center }
    end
  end

  # GET /competence_centers/new
  # GET /competence_centers/new.json
  def new
    @competence_center = CompetenceCenter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competence_center }
    end
  end

  # GET /competence_centers/1/edit
  def edit
    @competence_center = CompetenceCenter.find(params[:id])
  end

  # POST /competence_centers
  # POST /competence_centers.json
  def create
    @competence_center = CompetenceCenter.new(params[:competence_center])

    respond_to do |format|
      if @competence_center.save
        format.html { redirect_to @competence_center, notice: 'Competence center was successfully created.' }
        format.json { render json: @competence_center, status: :created, location: @competence_center }
      else
        format.html { render action: "new" }
        format.json { render json: @competence_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competence_centers/1
  # PUT /competence_centers/1.json
  def update
    @competence_center = CompetenceCenter.find(params[:id])

    respond_to do |format|
      if @competence_center.update_attributes(params[:competence_center])
        format.html { redirect_to @competence_center, notice: 'Competence center was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competence_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competence_centers/1
  # DELETE /competence_centers/1.json
  def destroy
    @competence_center = CompetenceCenter.find(params[:id])
    @competence_center.destroy

    respond_to do |format|
      format.html { redirect_to competence_centers_url }
      format.json { head :no_content }
    end
  end
end
