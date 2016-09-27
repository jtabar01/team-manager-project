class EventPropertyMapsController < ApplicationController
  before_action :set_event_property_map, only: [:show, :edit, :update, :destroy]

  # GET /event_property_maps
  # GET /event_property_maps.json
  def index
    @event_property_maps = EventPropertyMap.all
  end

  # GET /event_property_maps/1
  # GET /event_property_maps/1.json
  def show
  end

  # GET /event_property_maps/new
  def new
    @event_property_map = EventPropertyMap.new
  end

  # GET /event_property_maps/1/edit
  def edit
  end

  # POST /event_property_maps
  # POST /event_property_maps.json
  def create
    @event_property_map = EventPropertyMap.new(event_property_map_params)

    respond_to do |format|
      if @event_property_map.save
        format.html { redirect_to @event_property_map, notice: 'Event property map was successfully created.' }
        format.json { render :show, status: :created, location: @event_property_map }
      else
        format.html { render :new }
        format.json { render json: @event_property_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_property_maps/1
  # PATCH/PUT /event_property_maps/1.json
  def update
    respond_to do |format|
      if @event_property_map.update(event_property_map_params)
        format.html { redirect_to @event_property_map, notice: 'Event property map was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_property_map }
      else
        format.html { render :edit }
        format.json { render json: @event_property_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_property_maps/1
  # DELETE /event_property_maps/1.json
  def destroy
    @event_property_map.destroy
    respond_to do |format|
      format.html { redirect_to event_property_maps_url, notice: 'Event property map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_property_map
      @event_property_map = EventPropertyMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_property_map_params
      params.require(:event_property_map).permit(:event_id_id, :key, :value)
    end
end
