class Employee < ApplicationRecord
    before_create :upcase_firstname_lastname
    after_create :send_welcome_email
    before_save :calculate_plan_days
    after_save :print_plan_days
    
    validates :firstname, :lastname, presence: true

    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :email, uniqueness: true

    validates :username, exclusion: { in: %w(test bacancy),
    message: "%{value} is reserved." }


    validates :planenddate, comparison: { greater_than: :planstartdate }

    validates :phonenumber, length: { is: 10 }
    validates :zipcode, length: { minimum: 6 }

    validates :password, length: { in: 6..20 }

    private

    def upcase_firstname_lastname
      self.firstname = firstname.upcase
      self.lastname = lastname.upcase
    end


    def send_welcome_email
      puts "Welcome User in this form"
    end

    def calculate_plan_days
      self.totaldaysofplan = planenddate.day - planstartdate.day
    end

    def print_plan_days
      puts totaldaysofplan
    end
end
