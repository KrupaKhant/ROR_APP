class FeedbackMailer < ApplicationMailer
  def reply_feedback(feedback)
    @feedback = feedback
    @user = feedback.user
    mail to: @feedback.user.email, subject: "Your feedback has been replied"
  end
end

