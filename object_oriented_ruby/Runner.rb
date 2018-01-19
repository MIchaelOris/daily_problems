require "./employee.rb"

require "./reporting.rb"

require "./Manager.rb"

manager = Actualize::Manager.new(
                      first_name: "Clark",
                      last_name: "Kent",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
employees.give_annual_raise

intern = Actualize::intern.new(
                      first_name: "Jimmy",
                      lst_name: "Olsen" ,
                      salary: 30000 ,
                      active: true,
                      )

  intern.print_info
  intern.send_report 

  employee_1 = Actualize::Employee.new(
                          first_name: "Bruce", 
                          last_name: "Wayne", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Actualize::Employee.new(
                          first_name: "Diana", 
                          last_name: "Prince", 
                          salary: 80000, 
                          active: true
                          )
# employee_2.print_info
# p employee_1.active
# employee_1.active = false
# p employee_1.active