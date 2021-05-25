class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  # SAME AS: before_action :set_restaurant, except: [:index, :create, :new]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # params = {
    #   name: '',
    #   address: '',
    #   rating: ''
    # }

    # params = {
    #   restaurant: {
    #     name: "Ramiro",
    #     address: "Rua do Ramiro",
    #     rating: "5"
    #   }
    # }

    restaurant = Restaurant.new(restaurants_params)
    restaurant.save

    redirect_to restaurants_path
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant.update(restaurants_params)

    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # strong params
  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
