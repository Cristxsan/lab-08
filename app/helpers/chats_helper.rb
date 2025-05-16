module ChatsHelper

    def chat_participants(chat, current_user)
        participants = [chat.sender, chat.receiver]
        participants.reject { |u| u == current_user }.map(&:name).join(', ')
    end
end
