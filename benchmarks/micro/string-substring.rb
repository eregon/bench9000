# encoding: UTF-8

X = 'Hello'.freeze
NULL = File.open('/dev/null', 'w')

if ENV['USE_MUTABLE_ROPES'] && defined?(Truffle)
  Truffle::Ropes.convert_to_mutable_rope X
end

def micro_harness_input
end

def micro_harness_iterations
  1_000_000
end

def micro_harness_sample(input)
  z = X[1..3]
  NULL.write z
end

def micro_harness_expected
  3
end

require 'bench9000/micro-harness'
