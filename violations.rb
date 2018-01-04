require 'CSV'
require 'pry'


class Analysis

  attr_reader :violations

  def initialize
    open_file(csv)
  end

  def open_file("Violations-2012.csv")
    @violations = []
    csv = CSV.foreach file,
    headers: true, header_converters: :symbol do |row|
      @violations << Violation.new(row, self)
    end
  end
  #
  # def count_of_violations
  #
  # end
  #


end

analysis = Analysis.new
abalysis.open_file("Violations-2012.csv")
