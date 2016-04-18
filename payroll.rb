class Employee
  def initialize(name, email)
    @name = name
    @email = email
  end
end

class HourlyEmployee < Employee
  def initialize(name, email, hourly_rate, hours_in_week)
    @name = name
    @email = email
    @hourly_rate = hourly_rate
    @hours_in_week = hours_in_week
  end

  def calculate_salary
    @hourly_rate * @hours_in_week
  end
end

class SalariedEmployee < Employee
  def initialize(name, email, salary)
    super(name, email)
    @salary = salary
  end

  def calculate_salary
    #for the salaried Employee, using a 52 weeks year
    @salary / 52
  end
end

class MultiPaymentEmployee < HourlyEmployee
  def initialize(name, email, salary, hourly_rate, hours_worked)
    super(name, email, hourly_rate, hours_worked)
    @salary = salary
  end

  def calculate_salary
    @salary / 52 + [0, (@hours_worked - 40)].max * hourly_rate
  end
end

class TestPayroll
  def self.set_employees
    josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
    nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
    ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
  end
end
