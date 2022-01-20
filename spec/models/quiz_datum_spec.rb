require 'rails_helper'

RSpec.describe QuizDatum, type: :model do
  # Association test
  it { should belong_to(:user) }

  # Validation test
  it { should validate_presence_of(:founder_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:gender) }
  it { should validate_presence_of(:race_of_founder) }
  it { should validate_presence_of(:text_box) }
  it { should validate_presence_of(:conscious_beauty_credentials) }
end
