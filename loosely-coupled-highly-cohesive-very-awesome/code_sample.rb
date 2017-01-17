class FindDriverController < ApplicationController
  def create
    parse_params
    get_map
    get_available_drivers
    find_closest_drivers
    notify_drivers
    notify_analytics
  end

  def complete
    find_accepted_driver
    send_notification_to_user
    send_notification_to_driver
    notify_analytics
    render json: { ok: true }
  end
end

# In the old way, we'd extract into Service Objects

# In Domain-oriented thinking, we need to think more carefully and imagine
#   - Only modify aggregate roots
#   - Only modify 
