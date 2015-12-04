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
  10_000_000
end

def micro_harness_sample(input)
  input.length_missing
end

def micro_harness_expected
  micro_harness_input.length
end

require 'bench/micro-harness'
