class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = current_user.feedbacks.build(feedback_params)
    @feedback.user_id = current_user.id
    if @feedback.save
      if @feedback.rating < 3
        ActionCable.server.broadcast("feedbacks_channel", @feedback.as_json)
      end
      redirect_to root_path, notice: "Thank you for your feedback!"
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:rating, :description)
  end
end

