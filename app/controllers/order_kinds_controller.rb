class OrderKindsController < ApplicationController
  before_action :set_order_kind, only: [:show, :edit, :update, :destroy]

  # GET /order_kinds
  # GET /order_kinds.json
  def index
    @order_kinds = OrderKind.all
  end

  # GET /order_kinds/1
  # GET /order_kinds/1.json
  def show
  end

  # GET /order_kinds/new
  def new
    @order_kind = OrderKind.new
  end

  # GET /order_kinds/1/edit
  def edit
  end

  # POST /order_kinds
  # POST /order_kinds.json
  def create
    @order_kind = OrderKind.new(order_kind_params)

    respond_to do |format|
      if @order_kind.save
        format.html { redirect_to @order_kind, notice: 'Order kind was successfully created.' }
        format.json { render :show, status: :created, location: @order_kind }
      else
        format.html { render :new }
        format.json { render json: @order_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_kinds/1
  # PATCH/PUT /order_kinds/1.json
  def update
    respond_to do |format|
      if @order_kind.update(order_kind_params)
        format.html { redirect_to @order_kind, notice: 'Order kind was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_kind }
      else
        format.html { render :edit }
        format.json { render json: @order_kind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_kinds/1
  # DELETE /order_kinds/1.json
  def destroy
    @order_kind.destroy
    respond_to do |format|
      format.html { redirect_to order_kinds_url, notice: 'Order kind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_kind
      @order_kind = OrderKind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_kind_params
      params.require(:order_kind).permit(:order_kind_name)
    end
end
