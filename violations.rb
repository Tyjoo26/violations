require 'CSV'
require 'pry'

CSV.foreach('Violations-2012.csv') do |row|
  @violations = []
  @violations << row
end

@violations.each do |violation|
  @type = Hash.new(0)
  @type[violation[-1]] += 1
  p @type.inspect
end
