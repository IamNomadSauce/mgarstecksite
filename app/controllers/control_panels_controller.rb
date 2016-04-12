class ControlPanelsController < ApplicationController
  before_action :set_control_panel, only: [:show, :edit, :update, :destroy]
  before_action :require_admin,

  # GET /control_panels
  # GET /control_panels.json
  def index
    @control_panels = ControlPanel.all
  end

  # GET /control_panels/1
  # GET /control_panels/1.json
  def show
  end

  # GET /control_panels/new
  def new
    @control_panel = ControlPanel.new
  end

  # GET /control_panels/1/edit
  def edit
  end

  # POST /control_panels
  # POST /control_panels.json
  def create
    @control_panel = ControlPanel.new(control_panel_params)

    respond_to do |format|
      if @control_panel.save
        format.html { redirect_to @control_panel, notice: 'Control panel was successfully created.' }
        format.json { render :show, status: :created, location: @control_panel }
      else
        format.html { render :new }
        format.json { render json: @control_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control_panels/1
  # PATCH/PUT /control_panels/1.json
  def update
    respond_to do |format|
      if @control_panel.update(control_panel_params)
        format.html { redirect_to @control_panel, notice: 'Control panel was successfully updated.' }
        format.json { render :show, status: :ok, location: @control_panel }
      else
        format.html { render :edit }
        format.json { render json: @control_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control_panels/1
  # DELETE /control_panels/1.json
  def destroy
    @control_panel.destroy
    respond_to do |format|
      format.html { redirect_to control_panels_url, notice: 'Control panel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control_panel
      @control_panel = ControlPanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def control_panel_params
      params.require(:control_panel).permit(:index, :update, :show, :destroy)
    end
end
