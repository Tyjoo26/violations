require 'CSV'
require 'pry'

  violation = Violation.new
  
  options = {headers: true, header_converters: :symbol, converters: :numeric}

  CSV.foreach('Violations-2012.csv', options) do |row|
    @violations = []
    @violations << Violation.create(
      violation_id: row[:violation_id],
      inspection_id: row[:inspection_id],
      violation_category: row[:violation_category],
      violation_date: row[:violation_date],
      violation_date_closed: row[:violation_date_closed],
      violation_type: row[:violation_type])
  end

  p @violations




  # def count_of_violations
  #   @violations.each do |violation|
  #     @type = Hash.new(0)
  #     @type[violation[-1]] += 1
  #   end
  #
  # end

  # def earliest_violation_date
  #   @violations.each do |violation|
  #     @date =
  # end


# p count_of_violations
