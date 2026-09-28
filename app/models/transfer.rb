class Transfer < ApplicationRecord
  scope :oldest, -> { order(created_at: :asc) }
  scope :recent, -> { order(created_at: :desc) }

  include Pageable

  def amount=(value)
    if value.is_a?(String)
      value = value.gsub(",", ".")
    end
    super(value)
  end
end
