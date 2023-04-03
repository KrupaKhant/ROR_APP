class User < ApplicationRecord
    has_many :projects, dependent: :destroy
    after_create :send_email

    def birthdate_today?
        self.birthdate && self.birthdate.month == Date.today.month && self.birthdate.day == Date.today.day
    end

    private
    def send_email
        UserMailer.welcome_email(self).deliver_now
    end

    def send_email_at_night
        UserMailer.night_email(self).deliver_now
    end
end
