class ProductsController < ApplicationController

  #index
  def index
    @products = Product.all 
  end

  #new
  def new 
    @product = Product.new
  end
  #create
  def create 
    @product =  Product.new(params.require(:product).permit(:name, :description, :price, :quantity))
    # binding.pry
    if @product.save
      flash[:notice] = 'Product created successfully!'
      redirect_to @product
    else
      render :new
    end
  end
  #show
  def show
    @product = Product.find(params[:id])
  end

  #edit
  def edit 
    @product = Product.find(params[:id])
  end
  #update
  def update
    @product = Product.find(params[:id])

    if @product.update(params.require(:product).permit(:name, :description, :price, :quantity))
      redirect_to @product
    else
      render :edit
    end
  end

  #destroy
  def destroy
    product = Product.find(params[:id]).destroy

    redirect_to products_path
  end

  
end
