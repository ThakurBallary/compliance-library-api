module Api
	module V1
		class LibcomplsController < ApplicationController

			before_action :set_libcompl, only: [:show, :update, :destroy]
			
			def index
				libcompls = Libcompl.order('id DESC')
				render json: libcompls
			end

			def show
				render json: @libcompl
			end

			def create
				render json: libcompl.create(libcompl_params)
			end

			def update
				render json: @libcompl.update_attributes(libcompl_params)
			end

			def destroy
				if @libcompl.destroy
					head(:ok)
				else
					head(:unprocessable_entity)
				end
			end

			private

			def libcompl_params
				params.permit(:area, :act, :state, :date, :compliance_task, :compliance_details, :frequency, :demo, :review, :employees, :workmen, :contractors, :ref)
			end

			def set_libcompl
				@libcompl = Libcompl.find(params[:id])
			end

		end
	end
end