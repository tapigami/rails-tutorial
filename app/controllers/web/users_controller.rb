# frozen_string_literal: true

class Web::UsersController < ::WebController
  def index
    @users = User.all
  end
end
