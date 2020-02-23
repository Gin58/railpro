class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:welcome]

  def welcome
    @title = 'Welcome'
  end

  def index

  end
end
