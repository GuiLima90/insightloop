class Question < ApplicationRecord
  has_many :chats, dependent: :destroy
end

