class StaticPagesController < ApplicationController
  def home
    @price = current_user.prices.build if signed_in?
  end

  def price

  end

  def services

  end

  def info

  end

  def about

  end

  def about
  end
end
