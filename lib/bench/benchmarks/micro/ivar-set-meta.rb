OPERATIONS = 1_000_000

class Holder
  attr_accessor :my_var

  def initialize(my_var)
    @my_var = my_var
  end
end

def micro_harness_input
  Holder.new(-1)
end

def micro_harness_iterations
  100
end

def micro_harness_sample(input)
  OPERATIONS.times { input.instance_variable_set(:@my_var, 3) }
end

def micro_harness_expected
  OPERATIONS
end

require 'bench/micro-harness'
