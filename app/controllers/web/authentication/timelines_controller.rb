# frozen_string_literal: true

class Web::Authentication::TimelinesController < ::Web::AuthenticationController
  def show
    following_user_ids = current_user.user_followings.pluck(:user_id)
    @microposts = Micropost.where(user_id: following_user_ids).preload(:user).order(created_at: :desc)
  end
end
