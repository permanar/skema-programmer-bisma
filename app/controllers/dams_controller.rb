class DamsController < ApplicationController
  before_action :set_dam, only: [:show, :edit, :update, :destroy]

  # GET /dams
  # GET /dams.json
  def index
    @dams = Dam.all
  end

  # GET /dams/1
  # GET /dams/1.json
  def show
  end

  # GET /dams/new
  def new
    @dam = Dam.new
  end

  # GET /dams/1/edit
  def edit
  end

  # POST /dams
  # POST /dams.json
  def create
    @dam = Dam.new(dam_params)

    respond_to do |format|
      if @dam.save
        format.html { redirect_to @dam, notice: 'Dam was successfully created.' }
        format.json { render :show, status: :created, location: @dam }
      else
        format.html { render :new }
        format.json { render json: @dam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dams/1
  # PATCH/PUT /dams/1.json
  def update
    respond_to do |format|
      if @dam.update(dam_params)
        format.html { redirect_to @dam, notice: 'Dam was successfully updated.' }
        format.json { render :show, status: :ok, location: @dam }
      else
        format.html { render :edit }
        format.json { render json: @dam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dams/1
  # DELETE /dams/1.json
  def destroy
    @dam.destroy
    respond_to do |format|
      format.html { redirect_to dams_url, notice: 'Dam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dam
      @dam = Dam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dam_params
      params.require(:dam).permit(:name, :region, :size, :dam_created)
    end
end
