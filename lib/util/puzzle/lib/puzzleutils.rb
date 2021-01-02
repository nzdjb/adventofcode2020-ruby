# frozen_string_literal: true

# Helper functions for solving puzzles.
module PuzzleUtils
  def self.read_input(file)
    path = caller_locations.reject { |location| location.path == __FILE__ }.first.path
    File.open(File.join(File.dirname(path), '..', 'inputs', file)).read
  end

  def self.read_lines(file)
    read_input(file).lines.map(&:strip)
  end

  def self.read_ints(file)
    read_lines(file).map(&:to_i)
  end

  def self.read_groups(file)
    read_input(file).split(/\r?\n\r?\n/)
  end
end
