# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/permission_confirmation
  def permission_confirmation
    user = User.last
    UserMailer.permission_confirmation(user)
  end
end
