class PersonPostalAddressesController < ApplicationController
  before_action :set_person_postal_address, only: [:show, :edit, :update, :destroy]

  # GET /person_postal_addresses
  # GET /person_postal_addresses.json
  def index
    @person_postal_addresses = PersonPostalAddress.all
  end

  # GET /person_postal_addresses/1
  # GET /person_postal_addresses/1.json
  def show
  end

  # GET /person_postal_addresses/new
  def new
    @person_postal_address = PersonPostalAddress.new
  end

  # GET /person_postal_addresses/1/edit
  def edit
  end

  # POST /person_postal_addresses
  # POST /person_postal_addresses.json
  def create
    @person_postal_address = PersonPostalAddress.new(person_postal_address_params)

    respond_to do |format|
      if @person_postal_address.save
        format.html { redirect_to @person_postal_address, notice: 'Person postal address was successfully created.' }
        format.json { render :show, status: :created, location: @person_postal_address }
      else
        format.html { render :new }
        format.json { render json: @person_postal_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_postal_addresses/1
  # PATCH/PUT /person_postal_addresses/1.json
  def update
    respond_to do |format|
      if @person_postal_address.update(person_postal_address_params)
        format.html { redirect_to @person_postal_address, notice: 'Person postal address was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_postal_address }
      else
        format.html { render :edit }
        format.json { render json: @person_postal_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_postal_addresses/1
  # DELETE /person_postal_addresses/1.json
  def destroy
    @person_postal_address.destroy
    respond_to do |format|
      format.html { redirect_to person_postal_addresses_url, notice: 'Person postal address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_postal_address
      @person_postal_address = PersonPostalAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_postal_address_params
      params.require(:person_postal_address).permit(:person_id, :postal_address_id)
    end
end
