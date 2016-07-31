class RegistrationsController < Devise::RegistrationsController

  def create

    super do |resource|
      if resource.persisted?
        $tracker.alias(resource.id, cookies.signed[:mixpanel_id])

        $tracker.people.set(resource.id, {
            '$email' => resource.email
        })

        cookies.permanent.signed[:mixpanel_id] = resource.id
      end
    end

  end

end