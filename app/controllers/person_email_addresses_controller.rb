class PersonEmailAddressesController < ApplicationController
  before_action :set_person_email_address, only: [:show, :edit, :update, :destroy]

  # GET /person_email_addresses
  # GET /person_email_addresses.json
  def index
    @person_email_addresses = PersonEmailAddress.all
  end

  # GET /person_email_addresses/1
  # GET /person_email_addresses/1.json
  def show
  end

  # GET /person_email_addresses/new
  def new
    @person_email_address = PersonEmailAddress.new
  end

  # GET /person_email_addresses/1/edit
  def edit
  end

  # POST /person_email_addresses
  # POST /person_email_addresses.json
  def create
    @person_email_address = PersonEmailAddress.new(person_email_address_params)

    respond_to do |format|
      if @person_email_address.save
        format.html { redirect_to @person_email_address, notice: 'Person email address was successfully created.' }
        format.json { render :show, status: :created, location: @person_email_address }
      else
        format.html { render :new }
        format.json { render json: @person_email_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_email_addresses/1
  # PATCH/PUT /person_email_addresses/1.json
  def update
    respond_to do |format|
      if @person_email_address.update(person_email_address_params)
        format.html { redirect_to @person_email_address, notice: 'Person email address was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_email_address }
      else
        format.html { render :edit }
        format.json { render json: @person_email_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_email_addresses/1
  # DELETE /person_email_addresses/1.json
  def destroy
    @person_email_address.destroy
    respond_to do |format|
      format.html { redirect_to person_email_addresses_url, notice: 'Person email address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_email_address
      @person_email_address = PersonEmailAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_email_address_params
      params.require(:person_email_address).permit(:person_id, :email_address_id)
    end
end
