# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/main'

# Tests for the main class.
class TestMain202003 < Test::Unit::TestCase
  test 'part1 sample' do
    assert_equal('7', Main202003.part1('input_sample.txt').to_s)
  end
  test 'part2 sample' do
    assert_equal('336', Main202003.part2('input_sample.txt').to_s)
  end
  test 'part1 real' do
    assert_equal('225', Main202003.part1('input.txt').to_s)
  end
  test 'part2 real' do
    assert_equal('1115775000', Main202003.part2('input.txt').to_s)
  end
end
