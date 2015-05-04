class JobdescriptionsController < ApplicationController
  before_action :set_jobdescription, only: [:show, :edit, :update, :destroy]

  # GET /jobdescriptions
  def index
    @jobdescriptions = Jobdescription.all
  end

  # GET /jobdescriptions/1
  def show
  end

  # GET /jobdescriptions/new
  def new
    @jobdescription = Jobdescription.new
  end

  # GET /jobdescriptions/1/edit
  def edit
  end

  # POST /jobdescriptions
  def create
    @jobdescription = Jobdescription.new(jobdescription_params)

    if @jobdescription.save
      redirect_to @jobdescription, notice: 'Jobdescription was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /jobdescriptions/1
  def update
    if @jobdescription.update(jobdescription_params)
      redirect_to @jobdescription, notice: 'Jobdescription was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /jobdescriptions/1
  def destroy
    @jobdescription.destroy
    redirect_to jobdescriptions_url, notice: 'Jobdescription was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobdescription
      @jobdescription = Jobdescription.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def jobdescription_params
      params.require(:jobdescription).permit(:name, :description, :base_prefix)
    end
end
