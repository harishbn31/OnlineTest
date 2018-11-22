class TakeTestController < ApplicationController
  def quiz_start
    @questions = Question.where(question_bank_id: QuestionBank.first.id).limit(2)
    @answers = Answer.where(question_id: @questions.pluck(:id))
  end
end
