class CalcappsController < ApplicationController
  before_action :set_calcapp, only: %i[ show edit update destroy ]
  include CalcappsHelper

  # GET /calcapps or /calcapps.json
  def index
  end

  # GET /calcapps/1 or /calcapps/1.json
  def show
  end

  # GET /calcapps/new
  def new
    @result = Calcapp.send(params[:operation], *[params[:a], params[:b]])
   render :index
  end

  # GET /calcapps/1/edit
  def edit
  end

  # POST /calcapps or /calcapps.json
  def create
    @calcapp = Calcapp.new(calcapp_params)

    respond_to do |format|
      if @calcapp.save
        format.html { redirect_to calcapp_url(@calcapp), notice: "Calcapp was successfully created." }
        format.json { render :show, status: :created, location: @calcapp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calcapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calcapps/1 or /calcapps/1.json
  def update
    respond_to do |format|
      if @calcapp.update(calcapp_params)
        format.html { redirect_to calcapp_url(@calcapp), notice: "Calcapp was successfully updated." }
        format.json { render :show, status: :ok, location: @calcapp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calcapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calcapps/1 or /calcapps/1.json
  def destroy
    @calcapp.destroy

    respond_to do |format|
      format.html { redirect_to calcapps_url, notice: "Calcapp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calcapp
      @calcapp = Calcapp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calcapp_params
      params.require(:calcapp).permit(:name)
    end
end
