# ContactController 
class ContactController < ApplicationController
  def new;end

  def create 
    ContactJob.perform_now params.permit(:message)[:message]
    flash[:thanks] = 'Thanks for your submission!'
    redirect_to action: 'new'
  end
end
