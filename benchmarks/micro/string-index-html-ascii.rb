# encoding: UTF-8

DOC = { title: 'Hello', body: 'a' *  60 * 1024 }

def micro_harness_input
  s = '<html><head><title>' + DOC[:title] + '</title></head><body>' + DOC[:body] + '</body></html>'

  if ENV['USE_MUTABLE_ROPES'] && defined?(Truffle)
    Truffle::Ropes.convert_to_mutable_rope s
  end

  s
end

def micro_harness_iterations
  1_000_000
end

def micro_harness_sample(input)
  input[-1].ord
end

def micro_harness_expected
  62
end

require 'bench9000/micro-harness'
