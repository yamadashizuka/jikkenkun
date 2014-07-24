class JikkensController < ApplicationController
  before_action :set_jikken, only: [:show, :edit, :update, :destroy]

  # GET /jikkens
  # GET /jikkens.json
  def index

    date = Date.today
    @search = Jikken.search(params[:q])
    @jikkens = @search.result.page params[:page]

    @yotei = Jikken.count_yotei_exp(date)
    @jisseki = Jikken.count_jisseki_exp(date)
    @label_dat = Jikken.graph_label(date)

    #csv.sho
    respond_to do |format|
      format.html
      format.csv { send_data @jikkens.to_csv }
    end

  end

  # GET /jikkens/1
  # GET /jikkens/1.json
  def show
    @syaryos = @jikken.syaryos.all
    @syaryo  = @jikken.syaryos.build
    @buhins = @jikken.buhins.all
    @buhin  = @jikken.buhins.build
  end

  # GET /jikkens/new
  def new
    @jikken = Jikken.new
  end

  # GET /jikkens/1/edit
  def edit
  end

  # POST /jikkens
  # POST /jikkens.json
  def create
    @jikken = Jikken.new(jikken_params)

    respond_to do |format|
      if @jikken.save
        format.html { redirect_to @jikken, notice: 'Jikken was successfully created.' }
        format.json { render :show, status: :created, location: @jikken }
      else
        format.html { render :new }
        format.json { render json: @jikken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jikkens/1
  # PATCH/PUT /jikkens/1.json
  def update
    respond_to do |format|
      if @jikken.update(jikken_params)
        format.html { redirect_to @jikken, notice: 'Jikken was successfully updated.' }
        format.json { render :show, status: :ok, location: @jikken }
      else
        format.html { render :edit }
        format.json { render json: @jikken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jikkens/1
  # DELETE /jikkens/1.json
  def destroy
    @jikken.destroy
    respond_to do |format|
      format.html { redirect_to jikkens_url, notice: 'Jikken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # csv の読み込み
  def import
    Jikken.import(params[:file])
    redirect_to action: "index", notice: "Jikkens imported."
  end

  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jikken
      @jikken = Jikken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jikken_params
      params.require(:jikken).permit(:title, :plan_start, :plan_end, :act_start, :act_end, :memo, :tantou, :deadline)
    end
end
