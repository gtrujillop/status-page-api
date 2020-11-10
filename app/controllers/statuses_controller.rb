class StatusesController < ApplicationController
  def show
    render json: { status: 'operating', version: 0.1 }, status: :ok
  end
  
end
