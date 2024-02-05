require 'rails_helper'

RSpec.describe Language do
  let(:language) { build(:language) }

  it { is_expected.to validate_presence_of(:code) }
  it { is_expected.to validate_uniqueness_of(:code).case_insensitive }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_db_index(:deleted_at) }

  it 'has a valid factory' do
    expect(language).to be_valid
  end

  it 'is invalid without a code' do
    language.code = nil
    expect(language).not_to be_valid
  end

  it 'is invalid without a name' do
    language.name = nil
    expect(language).not_to be_valid
  end

  # Puedes utilizar Faker para generar datos aleatorios
  it 'is not valid without a unique code' do
    duplicate_language = language.dup
    duplicate_language.code = language.code.downcase
    language.save!
    expect(duplicate_language).not_to be_valid
  end
end
