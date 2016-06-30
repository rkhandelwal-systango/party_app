class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
 # if current_user.present?
  @user = current_user || User.where(email: params[:user][:email]).first  
  if @user.present?
  	if @user.role == 'admin'
    return admin_index_url
    elsif @user.role == 'user'
    request.env['omniauth.origin'] || index_path || root_path
    elsif @user.role == 'reviewer'
    return reviewers_url
    else	
    return root_url	
    
   end
else
	return root_url
end
end

def after_sign_out_path_for(resource_or_scope)
    root_path
end

end
