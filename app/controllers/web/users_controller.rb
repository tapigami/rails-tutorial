# frozen_string_literal: true

class Web::UsersController < ::WebController
  before_action :set_user, only: %i[show]

  def index
    @users = User.all
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
