class UserMailerJob < ApplicationJob
  queue_as :default

  def perform(user)
    UserMailer.with(user: user).welcome.deliver_later
  end

end
