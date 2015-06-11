class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all.order(:name)
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)

		if @restaurant.save
			redirect_to restaurant_path(@restaurant)
		else
			render 'new'
		end
	end

	def show
		@restaurant = Restaurant.find params[:id]
	end

	def edit
		@restaurant = Restaurant.find params[:id]
	end

	def update
		@restaurant = Restaurant.find params[:id]

		if @restaurant.update(restaurant_params)
			redirect_to restaurant_path(@restaurant)
		else
			render 'edit'
		end
	end

	def destroy
		@restaurant = Restaurant.find params[:id]
		@restaurant.destroy
		redirect_to restaurants_path
	end
	def sendrequest
		@user = current_user
		@restaurant = Restaurant.find params[:id]
		if user_signed_in?
			Appointment.welcome_email(@user).deliver_later
			redirect_to profile_path
		end
	end

	private
		def restaurant_params
			params.require(:restaurant).permit(:name, :address)
		end

end
