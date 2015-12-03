OPERATIONS = 500_000

def micro_harness_input
  "abc"
end

def micro_harness_iterations
  120
end

def micro_harness_sample(input)
  OPERATIONS.times { input.length }
end

def micro_harness_expected
  OPERATIONS
end

require 'bench/micro-harness'
