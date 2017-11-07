module Api
	module V1
		class AreasController < ApplicationController

			before_action :set_area, only: [:update, :destroy]

			def index
				render json: Area.order(:position)
			end

			def create
				area = Area.create(area_params)
				render json: area
			end

			def update
				@area.update_attributes(area_params)
				render json: @area
			end

			def destroy
				@area.destroy	
				render json: @area			
			end

			private

			def area_params
				params.permit(:position, :name)
			end

			def set_area
				@area = Area.find(params[:id])
			end

		end
	end
end