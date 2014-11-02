class TraitTypesController < ApplicationController
  before_action :set_trait_type, only: [:show, :edit, :update, :destroy]

  # GET /trait_types
  # GET /trait_types.json
  def index
    @trait_types = TraitType.all
  end

  # GET /trait_types/1
  # GET /trait_types/1.json
  def show
  end

  # GET /trait_types/new
  def new
    @trait_type = TraitType.new
  end

  # GET /trait_types/1/edit
  def edit
  end

  # POST /trait_types
  # POST /trait_types.json
  def create
    @trait_type = TraitType.new(trait_type_params)

    respond_to do |format|
      if @trait_type.save
        format.html { redirect_to @trait_type, notice: 'Trait type was successfully created.' }
        format.json { render :show, status: :created, location: @trait_type }
      else
        format.html { render :new }
        format.json { render json: @trait_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trait_types/1
  # PATCH/PUT /trait_types/1.json
  def update
    respond_to do |format|
      if @trait_type.update(trait_type_params)
        format.html { redirect_to @trait_type, notice: 'Trait type was successfully updated.' }
        format.json { render :show, status: :ok, location: @trait_type }
      else
        format.html { render :edit }
        format.json { render json: @trait_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trait_types/1
  # DELETE /trait_types/1.json
  def destroy
    @trait_type.destroy
    respond_to do |format|
      format.html { redirect_to trait_types_url, notice: 'Trait type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trait_type
      @trait_type = TraitType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trait_type_params
      params.require(:trait_type).permit(:name, :display, :description)
    end
end
