class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 10 }

  paginates_per 2

  scope :desc_order, -> { order(created_at: :desc) }
  scope :without_highlights, ->(ids) { where("id NOT IN(#{ids})") if ids.present? }
  scope :filter_by_category, ->(category) { where category_id: category.id if category.present? }
end
