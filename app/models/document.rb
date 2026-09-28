class Document < ApplicationRecord
  has_one_attached :file

  enum :doctype, { history: 0, legal: 1, other: 2 }
end
