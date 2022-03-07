class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :private
  has_many :answers
  belongs_to :user
end
