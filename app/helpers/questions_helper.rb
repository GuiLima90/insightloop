module QuestionsHelper
  def conversation_messages(text)
    return [] if text.blank?

    text.scan(/\[(Customer|Support Agent)\]:?\s*(.+?)(?=(?:\[(?:Customer|Support Agent)\])|$)/m).map do |role, content|
      {
        role: role,
        content: content.strip
      }
    end
  end
end
