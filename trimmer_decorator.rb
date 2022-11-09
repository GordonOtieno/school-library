require_relative './decorator'

require_relative './person'
require_relative './capitalize_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    return @nameable[0, 9] if @nameable.length > 10

    @nameable
  end
end
