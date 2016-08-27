# encoding: UTF-8

$truffle_mutable_ropes = ENV['USE_MUTABLE_ROPES'] && defined?(Truffle)

NULL = File.open('/dev/null', 'w')

def micro_harness_input
end

def micro_harness_iterations
  50
end

def micro_harness_sample(input)
  string = '<html>'

  if $truffle_mutable_ropes
    Truffle::Ropes.convert_to_mutable_rope string
  end

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
