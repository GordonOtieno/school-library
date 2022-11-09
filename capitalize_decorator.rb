require_relative './decorator'
require_relative './person'
class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.capitalize
  end
end
