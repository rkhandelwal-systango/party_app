class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]
# has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 #validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  # GET /resource/sign_up
  def new
  #   super
  @user = User.new
  end

  # POST /resource
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

  def update
   @user = current_user.id
  #@user = User.find(session[:session_id])
  if @user.present?
      @user = current_user
      if @user.update(user_params)
      redirect_to index_path
      else
      render 'edit'
      end
  else
  render 'edit' 
  end
end

def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
end
 

def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,:name,:phone_no,:address,:state,:city ,:pincode,:avatar,:user_id )
end
  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # You can put the params you want to permit in the empty array.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
