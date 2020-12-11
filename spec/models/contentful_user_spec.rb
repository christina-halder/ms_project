require 'rails_helper'

RSpec.describe ContentfulUser, type: :model do
  let!(:contentful_user) { create :contentful_user, :active }

  it 'has a valid factory' do
    expect(contentful_user).to be_valid
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:space_id) }
    it { is_expected.to validate_presence_of(:access_token) }
    it { is_expected.to validate_presence_of(:environment_id) }

    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_uniqueness_of(:space_id).scoped_to(:name, :access_token, :environment_id) }
    it { is_expected.to validate_uniqueness_of(:access_token).scoped_to(:name, :space_id, :environment_id) }
  end
end
