EXPECTED_VALUE = 2

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
  10_000_000
end

def micro_harness_sample(input)
  input.my_var = EXPECTED_VALUE
end

def micro_harness_expected
  EXPECTED_VALUE
end

require 'bench/micro-harness'
