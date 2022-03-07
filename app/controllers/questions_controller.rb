class QuestionsController < ApplicationController
  def index
    render json: serialize(Question.public_questions)
  end
end
