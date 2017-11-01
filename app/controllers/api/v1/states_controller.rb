module Api
	module V1
		class StatesController < ApplicationController

			def index
				render json: State.order(:key)
			end

		end
	end
end