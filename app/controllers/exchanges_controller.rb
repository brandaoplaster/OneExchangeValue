class ExchangesController < ApplicationController
  def index
  end

  def convert
    if params[:source_currency].eql? "BTC" or params[:target_currency].eql? "BTC"
      value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).cryptonator
    else
      value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).perform
    end
    render json: {"value": value}
  end
end