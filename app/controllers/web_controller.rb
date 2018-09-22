# frozen_string_literal: true

class WebController < ApplicationController
  protect_from_forgery with: :exception
end
