class SessionsController < Devise::SessionsController
  # POST /resource/sign_in
  def create
    cookies.permanent.signed[:mixpanel_id] = current_user.id
    cookies[:lol] = ''
    super
  end

  # GET /resource/sign_out
  def destroy
    cookies.permanent.signed[:mixpanel_id] = current_user.id
    cookies[:lol] = 'logged out'
    super
  end
end