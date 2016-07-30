class StaticPagesController < ApplicationController
  def home
    random = rand(100)
    $tracker.track(random, 'Visit Home', {
        'sticazzi' => random+1
    })

    puts random

  end
end
