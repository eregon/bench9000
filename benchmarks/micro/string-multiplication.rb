# encoding: UTF-8

X = 'abc'.freeze
NULL = File.open('/dev/null', 'w')

if ENV['USE_MUTABLE_ROPES'] && defined?(Truffle)
  Truffle::Ropes.convert_to_mutable_rope X
end

def micro_harness_input
  ''
end

def micro_harness_iterations
  1_000_000
end

def micro_harness_sample(input)
  input.replace(X)
  NULL.write(input * 3)
end

def micro_harness_expected
  9
end

require 'bench9000/micro-harness'
