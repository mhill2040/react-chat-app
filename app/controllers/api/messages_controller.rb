class Api::MessagesController < ApplicationController
  before_action :autenticate_user!

  def create
      MessageBus.publish "/chat_channel", { email: params[:email], body: params[:body] }
    end
  end
