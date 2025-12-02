class ChatsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])

    @chat = Chat.new(title: "Untitled")
    @chat = Chat.new(title: Chat::DEFAULT_TITLE)
    @chat.question = @question
    @chat.user = current_user

    if @chat.save
      redirect_to chat_path(@chat)
    else
      @chats = @question.chats.where(user: current_user)
      render "questions/show"
    end
  end

  def show
    @chat    = current_user.chats.find(params[:id])
    @message = Message.new
  end
end
