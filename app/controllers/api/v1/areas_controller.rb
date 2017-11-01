module Api
	module V1
		class AreasController < ApplicationController

			def index
				render json: Area.order(:position)
			end

		end
	end
end