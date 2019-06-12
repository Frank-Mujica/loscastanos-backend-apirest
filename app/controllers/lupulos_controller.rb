class LupulosController < ApplicationController
  before_action :set_lupulo, only: [:show, :update, :destroy]

  # GET /lupulos
  def index
    @lupulos = Lupulo.all

    render json: @lupulos
  end

  # GET /lupulos/1
  def show
    render json: @lupulo
  end

  # POST /lupulos
  def create
    @lupulo = Lupulo.new(lupulo_params)

    if @lupulo.save
      render json: @lupulo, status: :created, location: @lupulo
    else
      render json: @lupulo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lupulos/1
  def update
    if @lupulo.update(lupulo_params)
      render json: @lupulo
    else
      render json: @lupulo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lupulos/1
  def destroy
    @lupulo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lupulo
      @lupulo = Lupulo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lupulo_params
      params.permit(:name, :origin, :description, :stock, :lupulo_type, :cone_size, :cone_shape, :alpha_acids, :beta_acids, :cohumulones, :columbus, :storage_index, :humidity, :uses, :beer_type, :grams, :price, :image)
    end
end
