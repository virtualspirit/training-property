class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /properties/new
  def new
    @property = Property.new
    @property.amenities.build
    @property.photos.build
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to home_index_url, notice: 'Property was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:user_id, :title, :price, :parking, :bedroom, :toilet, :floor, :buildsize, :landsize, :locations, 
        :amenities_attributes => [:name], :photos_attributes => [:image]
        )
    end
end
