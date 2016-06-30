class PartiesController < ApplicationController
   
  def new 
    @parties = Party.new
  end

  def my_parties
    @parties = current_user.parties
  end

  def create
#@user = User.where(email: params[:user][:email], password: params[:user][:password]).first
#@parties = user.parties.build(party_params)
    @parties = current_user.parties.build(party_params)
    #@parties = Party.new(party_params)
    respond_to  do |f|
      if @parties.save
        f.html{ redirect_to index_path ,notice: "Your data has been entered"}
      else
        f.html{render action: "new"}
      end
    end
  end

  def index
    @parties = Party.where(status: 'pending')
  end 

  def party_params
    params.require(:parties).permit(:title,:party_type,:party_date,:time,:no_of_person,:avatar,:venue,:status)
  end

end
