class Api::V1::ActsController < ApplicationController

	before_action :set_act, only: [:show, :update, :destroy]

	def index
		render json: Act.order(:key)
	end

	def show
		render json: @act
	end

	def update
		if @act.update_attributes(act_params)
			render json: @act
		else
			render json: :unprocessable_entity
		end
	end

	def destroy
		render json: @act.destroy
	end

	private

	def set_act
		@act = Act.find(params[:id])
	end

end
	