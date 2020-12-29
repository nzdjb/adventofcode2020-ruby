# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/main'

# Tests for the main class.
class TestMain202001 < Test::Unit::TestCase
  test 'part1 sample' do
    assert_equal('514579', Main202001.part1('input_sample.txt'))
  end
  test 'part2 sample' do
    assert_equal('241861950', Main202001.part2('input_sample.txt'))
  end
  test 'part1 real' do
    assert_equal('935419', Main202001.part1('input.txt'))
  end
  test 'part2 real' do
    assert_equal('49880012', Main202001.part2('input.txt'))
  end
end
