class HomeController < ApplicationController


  def index

  end

  def new
  end

  def create

    @tweet = SendBot.new(params[:tweet]).perform
      render 'index'

  end
end
