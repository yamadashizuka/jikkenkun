class SyaryosController < ApplicationController
  before_action :set_syaryo, only: [:show, :edit, :update, :destroy]

  # GET /syaryos
  # GET /syaryos.json
  def index
    @syaryos = Syaryo.all
  end

  # GET /syaryos/1
  # GET /syaryos/1.json
  def show
  end

  # GET /syaryos/new
  def new
    @syaryo = Syaryo.new
  end

  # GET /syaryos/1/edit
  def edit
  end

  # POST /syaryos
  # POST /syaryos.json
  def create
    @syaryo = Syaryo.new(syaryo_params)

    respond_to do |format|
      if @syaryo.save
        format.html { redirect_to @syaryo, notice: 'Syaryo was successfully created.' }
        format.json { render :show, status: :created, location: @syaryo }
      else
        format.html { render :new }
        format.json { render json: @syaryo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syaryos/1
  # PATCH/PUT /syaryos/1.json
  def update
    respond_to do |format|
      if @syaryo.update(syaryo_params)
        format.html { redirect_to @syaryo, notice: 'Syaryo was successfully updated.' }
        format.json { render :show, status: :ok, location: @syaryo }
      else
        format.html { render :edit }
        format.json { render json: @syaryo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syaryos/1
  # DELETE /syaryos/1.json
  def destroy
    @syaryo.destroy
    respond_to do |format|
      format.html { redirect_to syaryos_url, notice: 'Syaryo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syaryo
      @syaryo = Syaryo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syaryo_params
      params.require(:syaryo).permit(:number_plate, :keeping_place, :condition_id, :memo, :status, :jikken_id,  :deadline)
    end
end
