
# employee_1 = ["Bruce", "Wayne", 70000, true]
# employee_2 = ["Diana", "Prince", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."


# employee_1 = {:first_name => "Bruce", :last_name => "Wayne", :salary => 70000, :active => true}
# employee_2 = {first_name: "Diana", last_name: "Prince", salary: 80000, active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes #{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes #{employee_2[:salary]} a year."


class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

employee_1 = Employee.new(
                          first_name: "Bruce", 
                          last_name: "Wayne", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Diana", 
                          last_name: "Prince", 
                          salary: 80000, 
                          active: true
                          )
employee_2.print_info
p employee_1.active
employee_1.active = false
p employee_1.active

class Manager < Employee
  def intialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end 

  def send_report
    puts "Sending Email..."
    #code that sends email
    puts "Email sent."
  end
end

manager = Manager.new(
                      first_name: "Clark",
                      last_name: "Kent",
                      salary: 100000,
                      active: true
                      employees:
                      )
manager.print_info
manager.send_report