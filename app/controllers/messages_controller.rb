class MessagesController < ApplicationController
  def index
    @messages = Message.includes(:chat, :user).all
  end

  def show
    @message = Message.find(params[:id])
  end
  
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.chat && @message.user && @message.save
      redirect_to @message.chat, notice: "Message sended succesfully."
    else
      flash.now[:alert] = "Unable to send message."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:chat_id, :user_id, :body)
  end
end
