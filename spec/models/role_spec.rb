# spec/models/role_spec.rb
require 'rails_helper'

RSpec.describe Role do
  let(:role) { build(:role) }

  it { is_expected.to have_many(:users) }
  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_uniqueness_of(:code).case_insensitive }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_db_index(:deleted_at) }

  it 'is valid with valid attributes' do
    expect(role).to be_valid
  end

  # Prueba para la presencia de atributos
  it 'is invalid without a code' do
    role.code = nil
    expect(role).not_to be_valid
  end

  it 'is invalid without a name' do
    role.name = nil
    expect(role).not_to be_valid
  end

  it 'is not valid without a unique code' do
    duplicate_role = role.dup
    duplicate_role.code = role.code.downcase
    role.save!
    expect(duplicate_role).not_to be_valid
  end
end
