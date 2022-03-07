class Question < ActiveRecord::Base

  has_many :answers
  belongs_to :user
  scope :private_questions, -> { where(private: false) }

end
