class ContactJob < ApplicationJob
  queue_as :default

  def perform 
    ContactMailer.submission("testing").deliver
  end

end

