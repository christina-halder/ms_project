class ContentfulUser < ApplicationRecord
  validates_presence_of :name, :access_token, :space_id, :environment_id
  validates :name, uniqueness: { case_sensitive: false }

  validates :access_token, uniqueness: { scope: [:name, :space_id, :environment_id] }
  validates :space_id, uniqueness: { scope: [:name, :access_token, :environment_id] }
end
