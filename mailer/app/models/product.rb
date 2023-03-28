class Product < ApplicationRecord
    after_create :send_new_product_notification

    def send_new_product_notification
      users = User.all
      users.each do |user|
        UserMailer.user_mailer(user, self).deliver_now
      end
    end
end
