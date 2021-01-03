# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/main'

# Tests for the main class.
class TestMain202006 < Test::Unit::TestCase
  test 'part1 sample' do
    assert_equal('11', Main202006.part1('input_sample.txt').to_s)
  end
  test 'part2 sample' do
    assert_equal('6', Main202006.part2('input_sample.txt').to_s)
  end
  test 'part1 real' do
    assert_equal('6768', Main202006.part1('input.txt').to_s)
  end
  test 'part2 real' do
    assert_equal('3489', Main202006.part2('input.txt').to_s)
  end
end
