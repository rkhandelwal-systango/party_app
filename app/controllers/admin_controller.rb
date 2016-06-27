class AdminController < ApplicationController
	def index
	end

	def users_list
     @users = User.all
	end
end
