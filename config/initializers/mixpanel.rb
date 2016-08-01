require 'mixpanel-ruby'
$tracker = Mixpanel::Tracker.new(ENV['MIXPANEL_TOKEN'])

if Rails.env.development?
  #silence local SSL errors
  Mixpanel.config_http do |http|
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  end
end

$mixpanel_client = Mixpanel::Client.new(
    api_key:    ENV['MIXPANEL_API_KEY'],
    api_secret: ENV['MIXPANEL_API_SECRET']
)