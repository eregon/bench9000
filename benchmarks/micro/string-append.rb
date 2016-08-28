# encoding: UTF-8

START_STRING = '<html>'
NULL = File.open('/dev/null', 'w')

if ENV['USE_MUTABLE_ROPES'] && defined?(Truffle)
  Truffle::Ropes.convert_to_mutable_rope START_STRING
end

def micro_harness_input
end

def micro_harness_iterations
  50
end

def micro_harness_sample(input)
  string = START_STRING.dup
  string << '<ul>'

  10_000.times do |n|
    string << '<li>' << n.to_s << '</li>'
  end

  string << '</ul>'
  string << '</html>'

  NULL.write string
end

def micro_harness_expected
  128912
end

require 'bench9000/micro-harness'
