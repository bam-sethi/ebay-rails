class ReviewsController < ApplicationController


  #index
  def index
    @reviews = Review.all
  end

  #new
  def new 
    @review = Review.new
  end

  #create
  def create 
    @review =  Review.new(params.require(:review).permit(:content, :rating, :recommend))

    if @review.save
      flash[:notice] = 'review created successfully!'
      redirect_to @review
    else
      render :new
    end
  end

  #show
  def show
    @review = Review.find(params[:id])
  end

 #edit
  def edit 
    @review = Review.find(params[:id])
  end
  #update
  def update
    @review = Review.find(params[:id])

    if @review.update(params.require(:review).permit(:name, :description, :price, :quantity))
      redirect_to @review
    else
      render :edit
    end
  end

  #destroy
  def destroy
    review = Review.find(params[:id]).destroy

    redirect_to reviews_path
  end

end
