# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base # rubocop:todo Style/Documentation
  default from: 'worldgovt.dist@gmail.com'
  layout 'mailer'
end
