class Admin::FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.where("rating < 3").order(created_at: :desc)
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def update
    @feedback = Feedback.find(params[:id])
    if @feedback.update(feedback_params)
      FeedbackMailer.reply_feedback(@feedback).deliver_now
      redirect_to admin_feedbacks_path, notice: "Feedback replied successfully."
    else
      render :show
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:reply)
  end
end
