class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @chats = @question.chats.where(user: current_user)
  end
end
