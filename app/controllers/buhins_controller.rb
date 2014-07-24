class BuhinsController < ApplicationController
  before_action :set_buhin, only: [:show, :edit, :update, :destroy]

  # GET /buhins
  # GET /buhins.json
  def index
    @buhins = Buhin.all
  end

  # GET /buhins/1
  # GET /buhins/1.json
  def show
  end

  # GET /buhins/new
  def new
    @buhin = Buhin.new
  end

  # GET /buhins/1/edit
  def edit
  end

  # POST /buhins
  # POST /buhins.json
  def create
    @buhin = Buhin.new(buhin_params)

    respond_to do |format|
      if @buhin.save
        format.html { redirect_to @buhin, notice: 'Buhin was successfully created.' }
        format.json { render :show, status: :created, location: @buhin }
      else
        format.html { render :new }
        format.json { render json: @buhin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buhins/1
  # PATCH/PUT /buhins/1.json
  def update
    respond_to do |format|
      if @buhin.update(buhin_params)
        format.html { redirect_to @buhin, notice: 'Buhin was successfully updated.' }
        format.json { render :show, status: :ok, location: @buhin }
      else
        format.html { render :edit }
        format.json { render json: @buhin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buhins/1
  # DELETE /buhins/1.json
  def destroy
    @buhin.destroy
    respond_to do |format|
      format.html { redirect_to buhins_url, notice: 'Buhin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buhin
      @buhin = Buhin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buhin_params
      params.require(:buhin).permit(:hinmei, :hinban, :nouhin_sya, :nouhin_day, :tantou, :kosu, :jikken_id, :deadline)
    end
end
