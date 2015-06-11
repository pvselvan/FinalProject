class PickupsController < ApplicationController

	def index
		@pickups = Pickup.all
	end

	def new
		@pickup = Pickup.new
	end

	def create
		@pickup = Pickup.new(pickup_params)

		if @pickup.save
			redirect_to pickup_path(@pickup)
		else
			render 'new'
		end
	end

	def show
		@pickup = Pickup.find params[:id]
	end

	def edit
		@pickup = Pickup.find params[:id]
	end

	def update
		@pickup = Pickup.find params[:id]

		if @pickup.update(pickup_params)
			redirect_to pickup_path(@pickup)
		else
			render 'edit'
		end
	end
	
	def assign_pickup
		@pickup = Pickup.find params[:id]
		@user = current_user
		Appointment.sample_email(@user).deliver
		@pickup.user_id = current_user.id
		redirect_to restaurant_path
	end


	def destroy
		@pickup = Pickup.find params[:id]
		@pickup.destroy
		redirect_to pickups_path
	end

	private
		def pickup_params
			params.require(:pickup).permit(:description, :start, :end)
		end

end
