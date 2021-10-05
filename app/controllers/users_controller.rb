# frozen_string_literal: true

class UsersController < ApplicationController
  include Pagy::Backend

  def index
    pagy, @users = pagy(User.all)
    response.headers['Total-Pages'] = pagy.pages

    render json: @users
  end
end
