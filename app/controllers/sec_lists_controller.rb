class SecListsController < ApplicationController
  before_action :set_sec_list, only: [:show, :edit, :update, :destroy]

  # GET /sec_lists
  # GET /sec_lists.json
  def index
    @sec_lists = SecList.all
  end

  # GET /sec_lists/1
  # GET /sec_lists/1.json
  def show
  end

  # GET /sec_lists/new
  def new
    @sec_list = SecList.new
  end

  # GET /sec_lists/1/edit
  def edit
  end

  # POST /sec_lists
  # POST /sec_lists.json
  def create
    @sec_list = SecList.new(sec_list_params)

    respond_to do |format|
      if @sec_list.save
        format.html { redirect_to @sec_list, notice: 'Sec list was successfully created.' }
        format.json { render :show, status: :created, location: @sec_list }
      else
        format.html { render :new }
        format.json { render json: @sec_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sec_lists/1
  # PATCH/PUT /sec_lists/1.json
  def update
    respond_to do |format|
      if @sec_list.update(sec_list_params)
        format.html { redirect_to @sec_list, notice: 'Sec list was successfully updated.' }
        format.json { render :show, status: :ok, location: @sec_list }
      else
        format.html { render :edit }
        format.json { render json: @sec_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sec_lists/1
  # DELETE /sec_lists/1.json
  def destroy
    @sec_list.destroy
    respond_to do |format|
      format.html { redirect_to sec_lists_url, notice: 'Sec list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sec_list
      @sec_list = SecList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sec_list_params
      params.require(:sec_list).permit(:number)
    end
end
