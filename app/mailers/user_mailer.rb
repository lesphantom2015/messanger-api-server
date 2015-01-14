class UserMailer < ActionMailer::Base
  # default from: Messenger::Application.config.name

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome user
    @user = user
    mail to: @user.email, subject: "Welcome to #{Messenger::Application.config.name}!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_message.subject
  #
  def new_message msg
    @sender = msg.sender
    @receiver = msg.receiver
    @message = msg.message

    mail to: @receiver.email, subject: "#{@sender.nickname} sends you a message in #{Messenger::Application.config.name}"
  end
end
