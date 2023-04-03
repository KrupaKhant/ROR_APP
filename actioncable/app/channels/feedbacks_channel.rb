class FeedbacksChannel < ApplicationCable::Channel
  def subscribed
    stream_from "feedbacks_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
