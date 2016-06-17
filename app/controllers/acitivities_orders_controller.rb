class ActivitiesOrdersController < ApplicationController
  before_action :set_activity_order, only: [:show, :edit, :update, :destroy]

  # GET /activities_orders
  # GET /activities_orders.json
  def index
    @activities_orders = ActivityOrder.all
  end

  # GET /products_sales/1
  # GET /products_sales/1.json
  def show
  end

  # GET /activities_orders/new
  def new
    @activity_order = ActivityOrder.new
  end

  # GET /activities_orders/1/edit
  def edit
  end

  # POST /activities_orders
  # POST /activities_orders.json
  def create
    @activity_order = ActivityOrder.new(activity_order_params)

    respond_to do |format|
      if @activity_order.save
        format.html { redirect_to @activity_order, notice: 'Product sale was successfully created.' }
        format.json { render :show, status: :created, location: @activity_order }
      else
        format.html { render :new }
        format.json { render json: @activity_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities_orders/1
  # PATCH/PUT /activities_orders/1.json
  def update
    respond_to do |format|
      if @activity_order.update(activity_order_params)
        format.html { redirect_to @activity_order, notice: 'Product sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_order }
      else
        format.html { render :edit }
        format.json { render json: @activity_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities_orders/1
  # DELETE /activities_orders/1.json
  def destroy
    @activity_order.destroy
    respond_to do |format|
      format.html { redirect_to activities_orders_url, notice: 'Product sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_order
      @activity_order = ActivityOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_order_params
      params.require(:activity_order).permit(:quantity, :order_id, :activity_id)
    end
end
