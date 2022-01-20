require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:quiz_data).dependent(:destroy) }

  # Validation tests
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
end
