class UserMailer < ApplicationMailer
    default form: 'xyz@email.com'
    
    def welcome_email(user)
        @user = user
        mail(to: user.email, subject: 'Company Visit')
    end
    
    def night_email
      @users = User.all
      mail(to: @users.pluck(:email), subject: 'Nightly Update').deliver 
    end
     
    def happy_birthday(user)
      @user = user
      mail(to: @user.email, subject: "Happy birthday!")
    end
end
