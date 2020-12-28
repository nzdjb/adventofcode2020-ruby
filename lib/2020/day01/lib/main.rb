# frozen_string_literal: true

require_relative '../../../util/puzzle/lib/puzzleutils'

# Class for solving puzzle 202001
class Main202001
  include PuzzleUtils
  def self.part1(input)
    ints = PuzzleUtils.read_ints(input)
    until ints.empty?
      test, *ints = ints
      return (test * (2020 - test)).to_s if ints.include?(2020 - test)
    end
  end

  def self.part2(input)
    ints = PuzzleUtils.read_ints(input)
    until ints.empty?
      test, *ints = ints
      ints2 = ints
      until ints2.empty?
        test2, *ints2 = ints2
        return (test * test2 * (2020 - test - test2)).to_s if ints.include?(2020 - test - test2)
      end
    end
  end
end
