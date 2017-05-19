class ServiceController < ApplicationController

	def project
		product = Project.all
		render json: {
			status: 200,
			message: 'Correct',
			todo_list:product
		}.to_json
	end
end
