def micro_harness_input
  "abc"
end

def micro_harness_iterations
  10_000_000
end

def micro_harness_sample(input)
  input.send(:length)
end

def micro_harness_expected
  micro_harness_input.length
end

require 'bench/micro-harness'
