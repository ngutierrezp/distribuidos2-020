# frozen_string_literal: true

class UsersController < ApplicationController # rubocop:todo Style/Documentation
  def create
    user = User.new(user_params)
    if user.save
      user.update(starts_at: 15.minutes.from_now)
      user.update(ends_at: 3.25.hours.from_now)
      UserMailer.permission_confirmation(user).deliver_now
      render json: user, status: :created
    else
      error(code: 400, status: 'Bad Request', title: 'CANNOT_CREATE_USER')
    end
  end

  def user_params
    params.permit('document', 'name', 'address', 'reason', 'email')
  end
end
