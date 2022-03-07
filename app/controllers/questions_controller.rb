class QuestionsController < ApplicationController
  def index
    render json: serialize(Question.private_questions)
  end
end
