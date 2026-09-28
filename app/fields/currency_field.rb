require "administrate/field/base"

class CurrencyField < Administrate::Field::Base
  def to_s
    data
  end
end
