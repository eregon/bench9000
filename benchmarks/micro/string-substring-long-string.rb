# encoding: UTF-8

X = ('HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello' * 100).freeze
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
  z = X[1..-2]
  NULL.write z
end

def micro_harness_expected
  X.size - 2
end

require 'bench9000/micro-harness'
