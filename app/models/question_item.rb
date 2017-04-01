class QuestionItem < ApplicationRecord
  belongs_to :question
  has_many :question_choices
  
  validates :content, presence: {message:'は必須項目です'}
end
