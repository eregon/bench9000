def micro_harness_input
  "abcdefghij" + 'こ'
end

def micro_harness_iterations
  1_000_000
end

def micro_harness_sample(input)
  length = input.length
  length.times { |i| input[i] }
  length
end

def micro_harness_expected
  11
end

require 'bench9000/micro-harness'
