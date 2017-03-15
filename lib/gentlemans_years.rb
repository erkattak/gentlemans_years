require "gentlemans_years/version"
require "active_support/all"

class Numeric
  def gentlemans_years
      ActiveSupport::Duration.new((self * (rand() + 1)) * 365.25.days.to_i, [[:years, self]])
  end
  alias :gentlemans_year :gentlemans_years
end
