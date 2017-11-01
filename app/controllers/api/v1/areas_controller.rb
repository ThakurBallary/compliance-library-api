module Api
	module V1
		class AreasController < ApplicationController

			def index
				render json: Area.order(:position), include: ['libcompls']
			end

		end
	end
end