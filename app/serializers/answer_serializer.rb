class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :body, :user_id, :user
end
