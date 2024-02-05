# spec/models/role_spec.rb
require 'rails_helper'

RSpec.describe Role, type: :model do
  let(:role) { FactoryBot.build(:role) }

  it { should validate_presence_of(:code) }
  it { should validate_presence_of(:name) }
  it { should have_db_index(:deleted_at) }

  it "has a valid factory" do
    expect(role).to be_valid
  end

  # Prueba para la presencia de atributos
  it "is invalid without a code" do
    role.code = nil
    expect(role).to_not be_valid
  end

  it "is invalid without a name" do
    role.name = nil
    expect(role).to_not be_valid
  end

  it 'is not valid without a unique code' do
    duplicate_role = role.dup
    duplicate_role.code = role.code.downcase
    role.save
    expect(duplicate_role).not_to be_valid
  end
end
