class V1::DrinksController < ApplicationController
  before_action :authorize_request
  def index
    @drinks = Drink.all
    render json: @drinks, status: :ok
  end
end
