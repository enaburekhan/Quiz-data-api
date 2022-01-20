class QuizDatum < ApplicationRecord
  belongs_to :user

  # validations
  validates_presence_of :founder_name
  validates_presence_of :email
  validates_presence_of :country
  validates_presence_of :gender
  validates_presence_of :race_of_founder
  validates_presence_of :text_box
  validates_presence_of :conscious_beauty_credentials
end
