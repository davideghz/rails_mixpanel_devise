class SessionsController < Devise::SessionsController
  # POST /resource/sign_in
  def create
    super
    cookies.permanent.signed[:mixpanel_id] = current_user.id
    # $tracker.identify(current_user.id)

    $tracker.people.set(current_user.id, {
        '$email' => current_user.email
    })

    $tracker.track(current_user.id, 'Sign-In') if signed_in?

  end

  # GET /resource/sign_out
  def destroy
    cookies.permanent.signed[:mixpanel_id] = current_user.id
    super
  end

end