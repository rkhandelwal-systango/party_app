class ReviewersController < ApplicationController
	def index
     @users = User.all
    end

  def new
      @users = User.all
      
    end
 def create
  #   super 
  @user = User.new(user_params)
   respond_to  do |f|
    if @user.save
    f.html{ redirect_to index_path ,notice: "Your data has been entered"}
    else
    f.html{render action: "new"}
    end
   end
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,:name,:phone_no,
      :address,:state,:city,:pincode,:role )
  end
 end
  
