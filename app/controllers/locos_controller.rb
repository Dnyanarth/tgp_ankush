class LocosController < ApplicationController
  # GET /locos
  # GET /locos.json
  def index
    @locos = Loco.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locos }
    end
  end

  # GET /locos/1
  # GET /locos/1.json
  def show
    @loco = Loco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @loco }
    end
  end

  # GET /locos/new
  # GET /locos/new.json
  def new
    @loco = Loco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @loco }
    end
  end

  # GET /locos/1/edit
  def edit
    @loco = Loco.find(params[:id])
  end

  # POST /locos
  # POST /locos.json
  def create
    @loco = Loco.new(params[:loco])

    respond_to do |format|
      if @loco.save
        format.html { redirect_to locos_path, notice: 'Loco was successfully created.' }
        format.json { render json: @loco, status: :created, location: @loco }
      else
        format.html { render action: "new" }
        format.json { render json: @loco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /locos/1
  # PUT /locos/1.json
  def update
    @loco = Loco.find(params[:id])

    respond_to do |format|
      if @loco.update_attributes(params[:loco])
        format.html { redirect_to @loco, notice: 'Loco was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @loco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locos/1
  # DELETE /locos/1.json
  def destroy
    @loco = Loco.find(params[:id])
    @loco.destroy

    respond_to do |format|
      format.html { redirect_to locos_url }
      format.json { head :no_content }
    end
  end
end
