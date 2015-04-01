class CoachOrdersController < ApplicationController
  before_action :set_coach_order, only: [:show, :edit, :update, :destroy]

  # GET /coach_orders
  # GET /coach_orders.json
  def index
    @coach_orders = CoachOrder.all
  end

  # GET /coach_orders/1
  # GET /coach_orders/1.json
  def show
  end

  # GET /coach_orders/new
  def new
    @coach_order = CoachOrder.new
  end

  # GET /coach_orders/1/edit
  def edit
  end

  # POST /coach_orders
  # POST /coach_orders.json
  def create
    @coach_order = CoachOrder.new(coach_order_params)

    respond_to do |format|
      if @coach_order.save
        format.html { redirect_to @coach_order, notice: 'Coach order was successfully created.' }
        format.json { render :show, status: :created, location: @coach_order }
      else
        format.html { render :new }
        format.json { render json: @coach_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coach_orders/1
  # PATCH/PUT /coach_orders/1.json
  def update
    respond_to do |format|
      if @coach_order.update(coach_order_params)
        format.html { redirect_to @coach_order, notice: 'Coach order was successfully updated.' }
        format.json { render :show, status: :ok, location: @coach_order }
      else
        format.html { render :edit }
        format.json { render json: @coach_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coach_orders/1
  # DELETE /coach_orders/1.json
  def destroy
    @coach_order.destroy
    respond_to do |format|
      format.html { redirect_to coach_orders_url, notice: 'Coach order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach_order
      @coach_order = CoachOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coach_order_params
      params.require(:coach_order).permit(:coach_role)
    end
end
