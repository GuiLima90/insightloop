class MessagesController < ApplicationController

  SYSTEM_PROMPT = "Você é um Analista de Conversas de Suporte da InsightLoop.
Sua função é analisar conversas entre clientes e suporte com o objetivo de apoiar estrategicamente a area de custommer success para que essas situacoes deixe de acontecer ao longo prazo com outros clientes.\n\nMe ajude a entender o que aconteceu, quais são os principais problemas e quais ações devem ser tomadas para mitigar problemas como esse— sem inventar informações.\n\nResponda de forma concisa, em Markdown e usando bullets curtos. \n\nApós responder o que foi solicitado, e quando fizer sentido, sugira  próximos passos úteis relacionados à análise.."

def create
  @chat = current_user.chats.find(params[:chat_id])
  @question = @chat.question

  @message = Message.new(message_params)
  @message.chat = @chat
  @message.role = "user"


  if @message.save
    @ruby_llm_chat = RubyLLM.chat.with_temperature(0.8)
    build_conversation_history
    response = @ruby_llm_chat.with_instructions(instructions).ask(@message.content)
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
    @ruby_llm_chat.add_message(
    role: message.role,
    content: message.content
    )
  end
end

def message_params
  params.require(:message).permit(:content)
end

def question_context
  "Aqui está o contexto da pergunta: #{@question.content}."
end

def instructions
  [SYSTEM_PROMPT, question_context].compact.join("\n\n")
end
end
