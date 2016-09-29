class OrganizationTeamsController < ApplicationController
  before_action :set_organization_team, only: [:show, :edit, :update, :destroy]

  # GET /organization_teams
  # GET /organization_teams.json
  def index
    @organization_teams = OrganizationTeam.all
  end

  # GET /organization_teams/1
  # GET /organization_teams/1.json
  def show
  end

  # GET /organization_teams/new
  def new
    @organization_team = OrganizationTeam.new
  end

  # GET /organization_teams/1/edit
  def edit
  end

  # POST /organization_teams
  # POST /organization_teams.json
  def create
    @organization_team = OrganizationTeam.new(organization_team_params)

    respond_to do |format|
      if @organization_team.save
        format.html { redirect_to @organization_team, notice: 'Organization team was successfully created.' }
        format.json { render :show, status: :created, location: @organization_team }
      else
        format.html { render :new }
        format.json { render json: @organization_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_teams/1
  # PATCH/PUT /organization_teams/1.json
  def update
    respond_to do |format|
      if @organization_team.update(organization_team_params)
        format.html { redirect_to @organization_team, notice: 'Organization team was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_team }
      else
        format.html { render :edit }
        format.json { render json: @organization_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_teams/1
  # DELETE /organization_teams/1.json
  def destroy
    @organization_team.destroy
    respond_to do |format|
      format.html { redirect_to organization_teams_url, notice: 'Organization team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_team
      @organization_team = OrganizationTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_team_params
      params.require(:organization_team).permit(:organization_id, :team_id)
    end
end
