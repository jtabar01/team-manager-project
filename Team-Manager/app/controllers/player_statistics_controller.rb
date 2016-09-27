class PlayerStatisticsController < ApplicationController
  before_action :set_player_statistic, only: [:show, :edit, :update, :destroy]

  # GET /player_statistics
  # GET /player_statistics.json
  def index
    @player_statistics = PlayerStatistic.all
  end

  # GET /player_statistics/1
  # GET /player_statistics/1.json
  def show
  end

  # GET /player_statistics/new
  def new
    @player_statistic = PlayerStatistic.new
  end

  # GET /player_statistics/1/edit
  def edit
  end

  # POST /player_statistics
  # POST /player_statistics.json
  def create
    @player_statistic = PlayerStatistic.new(player_statistic_params)

    respond_to do |format|
      if @player_statistic.save
        format.html { redirect_to @player_statistic, notice: 'Player statistic was successfully created.' }
        format.json { render :show, status: :created, location: @player_statistic }
      else
        format.html { render :new }
        format.json { render json: @player_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_statistics/1
  # PATCH/PUT /player_statistics/1.json
  def update
    respond_to do |format|
      if @player_statistic.update(player_statistic_params)
        format.html { redirect_to @player_statistic, notice: 'Player statistic was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_statistic }
      else
        format.html { render :edit }
        format.json { render json: @player_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_statistics/1
  # DELETE /player_statistics/1.json
  def destroy
    @player_statistic.destroy
    respond_to do |format|
      format.html { redirect_to player_statistics_url, notice: 'Player statistic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_statistic
      @player_statistic = PlayerStatistic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_statistic_params
      params.require(:player_statistic).permit(:player_id_id, :statistic_type, :statistic_value, :date_recorded, :stat_id)
    end
end
