class Api::V1::MessagesController < ApplicationController
  def index
    greeting = Message.all.sample

    if greeting
      render json: { data: greeting }, status: :ok
    else
      render json: greeting.errors, status: :bad_request
    end
  end
end
