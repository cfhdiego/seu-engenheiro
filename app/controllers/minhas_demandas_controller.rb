class MinhasDemandasController < ApplicationController
	def index
		@demandas = Demanda.all.where("pessoa_id = #{current_user.pessoa_id}")
	end
	def show
	end
end
