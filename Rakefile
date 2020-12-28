# frozen_string_literal: true

task default: %w[lint test]

require 'rubocop/rake_task'
require 'rake/testtask'
require 'fileutils'

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = ['--display-cop-names']
  t.options = ['--auto-correct-all']
end

desc 'Lint all files.'
task lint: :rubocop

desc 'Run the tests.'
Rake::TestTask.new do |task|
  task.test_files = FileList['lib/**/tc_*.rb']
  task.verbose = true
end

desc 'Generate a directory for a puzzle from template.'
task :gen, [:day, :year] do |_task, args|
  raise 'Day must be supplied!' unless args[:day]

  base_path = Dir.new(File.dirname(__FILE__))
  year = args[:year] || '2020'
  day = args[:day]
  day_path = File.join(base_path, 'lib', year, "day#{day}")

  raise 'Day already created.' if Dir.exist? day_path

  mkdir_p(day_path)

  template_path = File.join(base_path, 'lib', 'util', 'template')

  cp_r(template_path, day_path, verbose: true)

  # TODO: Rename test class.
end
