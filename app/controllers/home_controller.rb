class HomeController < ApplicationController
  before_action :authenticate

  def index
    render json: { hello: 'world' }
  end
end
