require "gentlemans_years/version"
require "active_support/all"

class Numeric
  def gentlemans_years
    num = self * (rand() + 1)
    ActiveSupport::Duration.new(num * 365.25.days.to_i, [[:years, num]])
  end
  alias :gentlemans_year :gentlemans_years
end
