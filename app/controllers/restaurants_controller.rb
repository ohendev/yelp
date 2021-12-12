class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]
  def index
      @restaurants = Restaurant.all
  end

  def search
    if params[:search][:category].empty?
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.where(category: params[:search][:category])
    end
  end

  def avis
    @restaurants = sort_by_reviews(Restaurant.all)
  end

  def rating
    @restaurants = sort_by_rating(Restaurant.all)
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render 'new'
    end
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(params[:id])
  end

  def edit
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address, :phone_number, :img_url)
  end

  def sort_by_reviews(restaurants)
    restaurants.sort {|resto1, resto2| resto2.reviews.size <=> resto1.reviews.size }
  end

  def sort_by_rating(restaurants)
    restaurants.sort {|resto1, resto2| average_rating(resto2) <=> average_rating(resto1) }
  end

  def average_rating(restaurant)
    sum = 0
    restaurant.reviews.each do |review|
      sum += review.rating
    end
    return restaurant.reviews.size.positive? ? sum.fdiv(restaurant.reviews.size) : sum.fdiv(1)
  end
end
