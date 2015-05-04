class PanelistsController < ApplicationController
  before_action :set_panelist, only: [:show, :edit, :update, :destroy]

  # GET /panelists
  def index
    @panelists = Panelist.all
  end

  # GET /panelists/1
  def show
  end

  # GET /panelists/new
  def new
    @panelist = Panelist.new
  end

  # GET /panelists/1/edit
  def edit
  end

  # POST /panelists
  def create
    @panelist = Panelist.new(panelist_params)

    if @panelist.save
      redirect_to @panelist, notice: 'Panelist was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /panelists/1
  def update
    if @panelist.update(panelist_params)
      redirect_to @panelist, notice: 'Panelist was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /panelists/1
  def destroy
    @panelist.destroy
    redirect_to panelists_url, notice: 'Panelist was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panelist
      @panelist = Panelist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def panelist_params
      params.require(:panelist).permit(:name, :mail)
    end
end
