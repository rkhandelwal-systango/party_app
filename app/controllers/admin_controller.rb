class AdminController < ApplicationController
  
  def index
  end

  def users_list
    @users = User.all
  end

  def reviewers_list
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_list_path
  end

  def accept_party
    binding.pry
    @Party = Party.find(params[:id])
    @party.status = 'accepted'
    if @party.save
    redirect_to parties_path
  else
    redirect_to parties_path
  end
  end


end