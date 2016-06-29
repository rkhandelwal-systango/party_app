class WelcomeController < ApplicationController
	def index
@parties = Party.all
@user = current_user
	end
end
