class AdminController < ApplicationController
  before_filter :authenticate_admin


  def index
  end
  
  def parties
    @parties = Party.status_of_party('pending')
  end
  
  def new_party
    @parties = Party.new
  end

  def create_party
    @parties = current_user.parties.build(party_params)
   #@parties = Party.new(party_params)
    respond_to  do |f|
      if @parties.save
        f.html{ redirect_to admin_index_path ,notice: "Your data has been entered"}
      else
        f.html{render action: "new"}
      end
    end
  end

  def users_list
    @users = User.role_of_user('user')
  end

  def reviewers_list
    @users = User.role_of_user('reviewer')
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_list_path
  end

  def accept_party
    @party = Party.find(params[:id])
    @party.status = 'accepted'
    if @party.save
      respond_to  do |f|
        f.js
      end
    end
  end  
 
  private
  def party_params
    params.require(:parties).permit(:title,:party_type,:party_date,:time,:no_of_person,:avatar,:venue,:status)
  end

  def authenticate_admin
    unless current_user.role == "admin"
      redirect_to root_path
    end
  end
  #   redirect_to parties_path
  # else
  #   redirect_to parties_path
  # end

end