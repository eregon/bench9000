OPERATIONS = 500_000

class Holder
  attr_accessor :my_var

  def initialize(my_var)
    @my_var = my_var
  end
end

def micro_harness_input
  Holder.new(nil)
end

def micro_harness_iterations
  125
end

def micro_harness_sample(input)
  x = -1
  OPERATIONS.times { x = 2 if input.instance_variable_get(:@my_var).nil? }
  x
end

def micro_harness_expected
  2
end

require 'bench/micro-harness'
