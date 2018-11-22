class Question < ApplicationRecord
    belongs_to :question_bank
    has_many :answers
    has_many :submissions
end
