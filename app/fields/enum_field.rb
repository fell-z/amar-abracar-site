require "administrate/field/base"

class EnumField < Administrate::Field::Base
  def to_s
    return if data.blank?
    resource.class.human_attribute_name("#{attribute}.#{data}")
  end

  def selectable_options
    resource.class.send(attribute.to_s.pluralize).keys.map do |key|
      [resource.class.human_attribute_name("#{attribute}.#{key}"), key]
    end
  end
end
