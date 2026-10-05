class Document < ApplicationRecord
  validates :name, presence: true
  validates :file, presence: true

  has_one_attached :file

  enum :doctype, { history: 0, legal: 1, other: 2 }
end
