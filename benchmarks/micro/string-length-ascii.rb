# encoding: UTF-8

X = ('Hello' * 100).freeze

if ENV['USE_MUTABLE_ROPES'] && defined?(Truffle)
  Truffle::Ropes.convert_to_mutable_rope X
end

def micro_harness_input
  ''
end

def micro_harness_iterations
  5_000_000
end

def micro_harness_sample(input)
  X.length
end

def micro_harness_expected
  500
end

require 'bench9000/micro-harness'
