class CustomersController < ApplicationController

  #index
  def index 
    @customers = Customer.all
  end

  #new
  def new
    @customer = Customer.new
  end

  #create
  def create
    customer = Customer.new(params.require(:customer).permit(:name, :age, :nationality))
    if customer.save
      flash[:notice] = 'New Customer added!'
      redirect_to customer
    else
      render :new
    end
  end

  #show
  def show 
    @customer = Customer.find(params[:id])
  end

  #edit
  def edit
    @customer = Customer.find(params[:id])
  end

  #update
  def update 
    customer = Customer.find(params[:id])

    if customer.update(params.require(:customer).permit(:name, :age, :nationality))
      redirect_to customer
    else
      render :edit
    end
  end

  #destroy
  def destroy
    customer = Customer.find(params[:id]).destroy
      redirect_to customers_path
  end


end
