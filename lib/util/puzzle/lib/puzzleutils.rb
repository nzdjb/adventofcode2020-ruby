# frozen_string_literal: true

# Helper functions for solving puzzles.
module PuzzleUtils
  def self.read_input(file)
    dir = File.dirname(caller.first.partition(':').first)
    File.open(File.join(dir, '..', 'inputs', file)).read
  end
end
