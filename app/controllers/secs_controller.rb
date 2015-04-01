class SecsController < ApplicationController
  before_action :set_sec, only: [:show, :edit, :update, :destroy]

  # GET /secs
  # GET /secs.json
  def index
    @secs = Sec.all
  end

  # GET /secs/1
  # GET /secs/1.json
  def show
  end

  # GET /secs/new
  def new
    @sec = Sec.new
  end

  # GET /secs/1/edit
  def edit
  end

  # POST /secs
  # POST /secs.json
  def create
    @sec = Sec.new(sec_params)

    respond_to do |format|
      if @sec.save
        format.html { redirect_to @sec, notice: 'Sec was successfully created.' }
        format.json { render :show, status: :created, location: @sec }
      else
        format.html { render :new }
        format.json { render json: @sec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secs/1
  # PATCH/PUT /secs/1.json
  def update
    respond_to do |format|
      if @sec.update(sec_params)
        format.html { redirect_to @sec, notice: 'Sec was successfully updated.' }
        format.json { render :show, status: :ok, location: @sec }
      else
        format.html { render :edit }
        format.json { render json: @sec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secs/1
  # DELETE /secs/1.json
  def destroy
    @sec.destroy
    respond_to do |format|
      format.html { redirect_to secs_url, notice: 'Sec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sec
      @sec = Sec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sec_params
      params.require(:sec).permit(:num_session, :day_session, :t_session, :comments)
    end
end
