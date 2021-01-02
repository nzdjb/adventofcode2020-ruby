# frozen_string_literal: true

require 'test/unit'
require_relative '../lib/main'

# Tests for the main class.
class TestMain202004 < Test::Unit::TestCase
  test 'part1 sample' do
    assert_equal('2', Main202004.part1('input_sample.txt').to_s)
  end
  test 'part2 sample' do
    assert_equal('2', Main202004.part2('input_sample.txt').to_s)
  end
  test 'part1 real' do
    assert_equal('247', Main202004.part1('input.txt').to_s)
  end
  test 'part2 real' do
    assert_equal('145', Main202004.part2('input.txt').to_s)
  end
end
