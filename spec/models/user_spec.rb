require 'rails_helper'

RSpec.describe User, type: :model do
  context '#create' do
    let(:user) { create(:user) }
    it 'should create new user' do
      expect(user).to be_valid
    end
  end

  context '#validation' do
    let(:user_without_email) { build(:user, email: '') }
    it 'return error message if email is empty' do
      user_without_email.save
      expect(user_without_email.errors.messages[:email].first).to eq("can't be blank")
    end
  end
end
