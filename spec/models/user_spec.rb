# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User do
  subject(:user) { build(:user) }

  it { is_expected.to belong_to(:role) }
  it { is_expected.to validate_presence_of(:username) }
  it { is_expected.to validate_uniqueness_of(:username).case_insensitive }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_confirmation_of(:password) }
  it { is_expected.to validate_length_of(:password).is_at_least(8) }
  it { is_expected.not_to allow_value('invalid_email').for(:email) }
  it { is_expected.to allow_value('valid_email@example.com').for(:email) }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is not valid without a password' do
    user.password = nil
    expect(user).not_to be_valid
  end

  it 'is not valid with a short password' do
    user.password = 'short'
    expect(user).not_to be_valid
  end

  it 'is not valid without a role' do
    user.role = nil
    expect(user).not_to be_valid
  end

  it 'is not valid without a username' do
    user.username = nil
    expect(user).not_to be_valid
  end

  it 'is not valid with a duplicate username (case-insensitive)' do
    create(:user, username: 'duplicate_username')
    user.username = 'DUPLICATE_USERNAME'
    expect(user).not_to be_valid
  end

  it 'is not valid without an email' do
    user.email = nil
    expect(user).not_to be_valid
  end

  it 'is not valid with a duplicate email (case-insensitive)' do
    create(:user, email: 'duplicate_email@example.com')
    user.email = 'DUPLICATE_EMAIL@example.com'
    expect(user).not_to be_valid
  end
end
