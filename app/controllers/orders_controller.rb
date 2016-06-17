class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]



  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    @nombre = 'Sales'
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @nombre = 'Detalles de la orden'
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.activities_orders.build
    @order.activities.build
    @nombre = 'Nueva orden'
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
    @order.activities_orders.build
    @order.activities.build
    @nombre = 'Editar orden'
  end

  # POST /orders
  # POST /orders.json
  autocomplete :location, :location_name
  autocomplete :installer, :employee_key
  autocomplete :order_kind, :order_kind_name
  autocomplete :classification, :name
  def create
    @order = Order.new(order_params)
    @order.user = current_user

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Se actualizo correctamente la orden' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    @nombre = 'Eliminar orden'
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Se elimino corrrectamente la orden.' }
      format.json { head :no_content }
    end
  end

  autocomplete :location, :location_name, :extra_data => [:id]
  autocomplete :installer, :employee_key, :extra_data => [:id]
  autocomplete :order_kind, :order_kind_name
  autocomplete :classification, :name


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(
        :account, :work_order, :check_in, :location_id, :installer_id, :order_kind, :classification_id,
        activities_orders_attributes: [:activity_id, :quantity, :_destroy,
          activities_attributes: [:id, :activity_name, :activity_cost] ]
        )
    end
end
