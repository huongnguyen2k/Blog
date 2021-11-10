class NotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notifications:#{current2_user.id}"
  end

  def unsubscribed
    stop_all_streams
  end
end
