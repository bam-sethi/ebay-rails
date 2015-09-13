class CustomersController < ApplicationController

  #index
  def index 
    @customers = Customer.all
  end

  #new
  def new
    customer = Customer.new
  end

  #create
  def create
    @customer = Customer.new(customer_params)
  end


  #show
  #edit
  #update
  #destroy



end
