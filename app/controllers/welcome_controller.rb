class WelcomeController < ApplicationController


def index
	@parties =Party.all
  
end

end
