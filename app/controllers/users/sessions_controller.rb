class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

# def login
#   @user = User.where(email: params[:users][:email], password: params[:users][:password]).first

#   if @user.present? 
#     if @user.role == 'admin'
#       redirect_to admin_index_path
#     else
#       redirect_to index_path
#     end
#    else
#     redirect_to root_path
#    end
   
# end
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
