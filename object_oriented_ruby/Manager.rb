require "./employee.rb"

require "./reporting.rb"


class Manager < Employee
  include Reporting
  end
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
  end 