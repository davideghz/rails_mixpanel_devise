class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def fetch_mixpanel_id
    user_id = user_signed_in? ? current_user.id : cookies.signed[:mixpanel_id]

    if user_id
      user_id
    else
      random_id = SecureRandom.uuid
      cookies.signed[:mixpanel_id] = random_id
    end
  end

end
