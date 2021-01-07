# frozen_string_literal: true

class UserMailer < ApplicationMailer # rubocop:todo Style/Documentation
  def permission_confirmation(user)
    @user = user

    mail to: @user.email,
         subject: 'Confirmación solicitud permiso temporal.'
  end
end
