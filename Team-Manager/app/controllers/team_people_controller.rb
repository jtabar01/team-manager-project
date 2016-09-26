class TeamPeopleController < ApplicationController
  before_action :set_team_person, only: [:show, :edit, :update, :destroy]

  # GET /team_people
  # GET /team_people.json
  def index
    @team_people = TeamPerson.all
  end

  # GET /team_people/1
  # GET /team_people/1.json
  def show
  end

  # GET /team_people/new
  def new
    @team_person = TeamPerson.new
  end

  # GET /team_people/1/edit
  def edit
  end

  # POST /team_people
  # POST /team_people.json
  def create
    @team_person = TeamPerson.new(team_person_params)

    respond_to do |format|
      if @team_person.save
        format.html { redirect_to @team_person, notice: 'Team person was successfully created.' }
        format.json { render :show, status: :created, location: @team_person }
      else
        format.html { render :new }
        format.json { render json: @team_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_people/1
  # PATCH/PUT /team_people/1.json
  def update
    respond_to do |format|
      if @team_person.update(team_person_params)
        format.html { redirect_to @team_person, notice: 'Team person was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_person }
      else
        format.html { render :edit }
        format.json { render json: @team_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_people/1
  # DELETE /team_people/1.json
  def destroy
    @team_person.destroy
    respond_to do |format|
      format.html { redirect_to team_people_url, notice: 'Team person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_person
      @team_person = TeamPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_person_params
      params.require(:team_person).permit(:person_id_id, :team_id_id)
    end
end
