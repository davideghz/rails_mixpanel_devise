class StaticPagesController < ApplicationController
  def home
    unique_id = fetch_mixpanel_id
    $tracker.track(unique_id, 'Visit Home')

    data = $mixpanel_client.request(
        'events/properties',
        event:     'Visit Home',
        name:      'Email',
        type:      'general',
        unit:      'month',
        interval: 1
    )

    @output = JSON.parse(data).to_s

  end

  def page_one
    unique_id = fetch_mixpanel_id
    $tracker.track(unique_id, 'Visit Page 1')
  end

  def page_two
    unique_id = fetch_mixpanel_id
    $tracker.track(unique_id, 'Visit Page 2')
  end

  def page_three
    unique_id = fetch_mixpanel_id
    $tracker.track(unique_id, 'Visit Page 3')
  end

end
