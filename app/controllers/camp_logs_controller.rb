class CampLogsController < ApplicationController
  before_action :set_camp_log, only: [:show, :edit, :update, :destroy]

  # GET /camp_logs
  # GET /camp_logs.json
  def index
    @camp_logs = CampLog.all
  end

  # GET /camp_logs/1
  # GET /camp_logs/1.json
  def show
  end

  # GET /camp_logs/new
  def new
    @camp_log = CampLog.new
  end

  # GET /camp_logs/1/edit
  def edit
  end

  # POST /camp_logs
  # POST /camp_logs.json
  def create
    @camp_log = CampLog.new(camp_log_params)

    respond_to do |format|
      if @camp_log.save
        format.html { redirect_to @camp_log, notice: 'Camp log was successfully created.' }
        format.json { render :show, status: :created, location: @camp_log }
      else
        format.html { render :new }
        format.json { render json: @camp_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camp_logs/1
  # PATCH/PUT /camp_logs/1.json
  def update
    respond_to do |format|
      if @camp_log.update(camp_log_params)
        format.html { redirect_to @camp_log, notice: 'Camp log was successfully updated.' }
        format.json { render :show, status: :ok, location: @camp_log }
      else
        format.html { render :edit }
        format.json { render json: @camp_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camp_logs/1
  # DELETE /camp_logs/1.json
  def destroy
    @camp_log.destroy
    respond_to do |format|
      format.html { redirect_to camp_logs_url, notice: 'Camp log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camp_log
      @camp_log = CampLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camp_log_params
      params.require(:camp_log).permit(:registration_id, :log, :picture, :user_id)
    end
end
