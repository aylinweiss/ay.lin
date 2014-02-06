class ProductsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index, :show, :home]
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_product_identification, only: [ :edit, :update, :destroy]
  
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
      @prodct = current_user.products.new(product_params)
      respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
  
  def home
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
     def set_product
       @product = Product.find(params[:id])
    end


    def set_product_identification
          @product = Product.find(params[:id])
          if @product.user_id != current_user.id
            redirect_to product_path, alert: 'You can edit oder delete only your own Products.'
          end
    end

    def product_params
      params.require(:product).permit(:name, :image, :prise, :description, :user_id)
    end
end

   