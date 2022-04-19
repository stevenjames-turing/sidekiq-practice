class MailersController < ApplicationController
  def create
    MoodSenderJob.perform_async(params[:mailers][:email], params[:mailers][:mood])
    flash[:message] = "You did it! Email sent to #{params[:mailers][:email]}"
    redirect_to "/sent"
  end

  def sent
  end
end
