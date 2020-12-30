# frozen_string_literal: true

require_relative '../../../util/puzzle/lib/puzzleutils'

# Class for solving puzzle 202003
class Main202003
  include PuzzleUtils
  def self.part1(input)
    try_slope(PuzzleUtils.read_lines(input), 3, 1)
  end

  def self.part2(input)
    [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]].map do |x, y|
      try_slope(PuzzleUtils.read_lines(input), x, y)
    end.reduce(&:*)
  end

  def self.try_slope(input, delta_x, delta_y)
    width = input[0].size
    input.select.with_index do |line, index|
      (index % delta_y).zero? && line[(index / delta_y * delta_x) % width] == '#'
    end.size
  end
end
