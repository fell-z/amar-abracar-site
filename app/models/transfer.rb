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

  def self.order_options
    attribute_names.reject { |a| %w[id title description updated_at].include? a }.map do |a|
      if a == "created_at"
        ["Data", a]
      else
        [I18n.t("activerecord.attributes.transfer.#{a}"), a]
      end
    end
  end
end
