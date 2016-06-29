class ReviewersController < ApplicationController
	def index
     @users = User.all
     @parties = Party.all
    end

  def new
      @user = User.new
  end

  def create
  @user = User.new(user_params)
   respond_to  do |f|
    if @user.save
    f.html{ redirect_to admin_index_path ,notice: "Your data has been entered"}
    else
    f.html{render action: "new"}
    end
   end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,:name,:phone_no,
      :address,:state,:city,:pincode,:role )
  end
 
 end
  
