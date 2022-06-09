require 'rails_helper'

RSpec.describe User, type: :model do
  context '#create' do
    let(:user) { create(:user) }
    it 'should create new user' do
      user.save
      expect(user).to be_valid
    end

    # it 'should give error message if username is empty' do
    #   user = build(:user, username: '')
    #   user.save
    #   expect(user.errors.messages[:username].first).to eq("can't be blank")
    # end
  end

  # context 'authenticate' do
  #   it 'should not authenticate if credentials are invalid' do
  #     is_valid = User.authenticate('invalid_username', 'invalid_password')
  #     expect(is_valid).to be_falsey
  #   end

  #   it 'should authenticate if credentials are valid' do
  #     user = build(:user, username: 'username', password: '123456')
  #     user.save
  #     is_valid = User.authenticate('username', '123456')
  #     expect(is_valid).to be_truthy
  #   end
  # end
end
