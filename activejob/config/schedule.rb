# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
# every 1.day, at: '4:09 pm' do
#     runner "UserMailer.send_email_night.deliver_later"
# end
set :output, './log/cron.log'
every 1.minute do
  runner "puts 'hello, world'"
end
every 1.day, at: '12:44 pm' do
    runner 'UserMailer.night_email.deliver_now'
end
every 1.day, at: '4:02pm' do
    runner "User.where('birthdate IS NOT NULL').each do |user|
      UserMailer.happy_birthday(user).deliver_now if user.birthdate_today?
    end"
end
  
  