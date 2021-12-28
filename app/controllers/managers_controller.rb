class ManagersController < ApplicationController
	def index
		@managers = Manager.all
	end

end
