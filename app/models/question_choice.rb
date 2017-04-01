class QuestionChoice < ApplicationRecord
  belongs_to :question_item
  
  validates :content, :value, presence: {message:'は必須項目です'}
  validates :value, numericality: {message:'は必須項目です'}
end
