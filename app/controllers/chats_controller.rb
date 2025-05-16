class ChatsController < ApplicationController
  def index
    @chats = Chat.includes(:sender, :receiver).all
  end

  def show
    @chat = Chat.find(params[:id])
    @messages = @chat.messages.includes(:user) 
    @new_message = Message.new  
  end
  
  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.find_or_create_by(chat_params) 
    if @chat.persisted?
      redirect_to @chat, notice: "Chat created succesfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:sender_id, :receiver_id)
  end
end
