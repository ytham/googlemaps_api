class GmapsController < ApplicationController
  # GET /gmaps
  # GET /gmaps.json
  def index
    @gmaps = Gmap.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gmaps }
    end
  end

  # GET /gmaps/1
  # GET /gmaps/1.json
  def show
    @gmap = Gmap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gmap }
    end
  end

  # GET /gmaps/new
  # GET /gmaps/new.json
  def new
    @gmap = Gmap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gmap }
    end
  end

  # GET /gmaps/1/edit
  def edit
    @gmap = Gmap.find(params[:id])
  end

  # POST /gmaps
  # POST /gmaps.json
  def create
    @gmap = Gmap.new(params[:gmap])

    respond_to do |format|
      if @gmap.save
        format.html { redirect_to @gmap, notice: 'Gmap was successfully created.' }
        format.json { render json: @gmap, status: :created, location: @gmap }
      else
        format.html { render action: "new" }
        format.json { render json: @gmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gmaps/1
  # PUT /gmaps/1.json
  def update
    @gmap = Gmap.find(params[:id])

    respond_to do |format|
      if @gmap.update_attributes(params[:gmap])
        format.html { redirect_to @gmap, notice: 'Gmap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gmaps/1
  # DELETE /gmaps/1.json
  def destroy
    @gmap = Gmap.find(params[:id])
    @gmap.destroy

    respond_to do |format|
      format.html { redirect_to gmaps_url }
      format.json { head :no_content }
    end
  end
end
