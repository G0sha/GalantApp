class PricesController < ApplicationController
  before_action :signed_in_user

  def create
    @price = current_user.prices.build(price_params)
    if @price.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def price_params
      params.require(:price).permit(:content)
    end
end
