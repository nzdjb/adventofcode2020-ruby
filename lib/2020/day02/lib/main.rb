# frozen_string_literal: true

require_relative '../../../util/puzzle/lib/puzzleutils'

# Class for solving puzzle 202002
class Main202002
  include PuzzleUtils
  def self.part1(input)
    PuzzleUtils.read_lines(input).select { |line| Line.new(line).part1 }.size.to_s
  end

  def self.part2(input)
    PuzzleUtils.read_lines(input).select { |line| Line.new(line).part2 }.size.to_s
  end
end

#  Class to represent a line from the input file.
class Line
  attr_reader :min, :max, :char, :password

  def initialize(line)
    line.match(/^([0-9]+)-([0-9]+) ([a-z]): ([a-z]+)$/) do |match|
      @min = match.captures[0].to_i
      @max = match.captures[1].to_i
      @char = match.captures[2]
      @password = match.captures[3]
    end
  end

  def part1
    count = @password.split('').select { |char| char == @char }.size
    @min <= count && count <= @max
  end

  def part2
    pa = @password.split('')
    (pa[@min - 1] == @char) ^ (pa[@max - 1] == @char)
  end
end
