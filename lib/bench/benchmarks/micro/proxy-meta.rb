OPERATIONS = 500_000

class Proxy
  def initialize(str)
    @str = str
  end

  def length
    @str.length
  end

  def method_missing(*args)
    @str.length
  end
end

def micro_harness_input
  Proxy.new("abc")
end

def micro_harness_iterations
  75
end

def micro_harness_sample(input)
  OPERATIONS.times { input.length_missing }
end

def micro_harness_expected
  OPERATIONS
end

require 'bench/micro-harness'
