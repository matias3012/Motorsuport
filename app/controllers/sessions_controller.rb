class SessionsController < ApplicationController

  def new
    user_info = request.env['omniauth.auth']
  end
end
