class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def fetch_mixpanel_id
    # Explicitly call srand in case you set it to a known value elsewhere (which would be catastrophic).
    srand
    user_id = user_signed_in? ? current_user.id : cookies.signed[:mixpanel_id]

    if user_id
      user_id
    else
      random_id = rand(10 ** 10).to_i
      cookies.signed[:mixpanel_id] = random_id
    end
  end

end
