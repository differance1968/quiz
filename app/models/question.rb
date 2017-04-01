class Question < ApplicationRecord
    has_many :question_items
    
    validates :title, presence: {message:'は必須項目です'}
end
