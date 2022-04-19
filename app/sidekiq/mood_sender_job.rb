class MoodSenderJob
  include Sidekiq::Job

  def perform(email, mood)
    UserNotifierMailer.send_mood_email(email, mood).deliver_now
  end
end
