class StaticPagesController < ApplicationController
  def home
    unique_id = fetch_mixpanel_id
    $tracker.track(unique_id, 'Visit Home')
  end
end
