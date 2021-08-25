class Category < ApplicationRecord
  has_many :articles, dependent: :restrict_with_error

  validates :name,
            presence: true,
            length: { minimum: 3 },
            uniqueness: { case_sensitive: false }

  scope :sorted, -> { order(:name) }
end
