class MessagesController < ApplicationController
  SYSTEM_PROMPT = "You are an AI assistant of a busy Business Analyst who wants to understand complex and lengthy discussions between customers and support in a synthetic way.
  You should return in bullet points: what are customers complaining about as well as suggesting some actions that the business teams can take to better address root causes."





  def create
    @chat = current_user.chats.find(params[:chat_id])
    @question = @chat.question

    @message = Message.new(message_params)
    @message.chat = @chat
    @message.role = "user"


    if @message.save
      ruby_llm_chat = RubyLLM.chat
      build_conversation_history
      response = ruby_llm_chat.with_instructions(instructions).ask(@message.content)
      Message.create(role: "assistant", content: response.content, chat: @chat)
      @chat.generate_title_from_first_message
      redirect_to chat_path(@chat)
    else
      render "chats/show", status: :unprocessable_entity
    end
  end

  private

  def build_conversation_history
    @chat.messages.each do |message|
      @ruby_llm_chat.add_message(message)
    end
  end


  def message_params
    params.require(:message).permit(:content)
  end

  def question_context
    "Here is the context of the challenge: #{@question.content}."
  end

  def instructions
    [SYSTEM_PROMPT, question_context].compact.join("\n\n")
  end
end
