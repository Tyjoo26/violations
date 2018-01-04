require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require 'csv'
require './violations.rb'

class ViolationsTest < MiniTest::Test

  def test_does_it_exist?
    violations = Violations.new('./Violations-2012.csv')

    assert_instance_of violations
  end


end
