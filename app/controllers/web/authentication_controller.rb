# frozen_string_literal: true

class Web::AuthenticationController < ::WebController
  private

  def current_user
    # TODO: hoge
    @current_user ||= User.find(1)
  end
end
