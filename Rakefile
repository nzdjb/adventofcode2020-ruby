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
  day = format('%02d', args[:day])
  day_path = File.join(base_path, 'lib', year, "day#{day}")

  raise 'Day already created.' if Dir.exist? day_path

  mkdir_p(day_path)

  template_path = File.join(base_path, 'lib', 'util', 'template')

  cp_r(File.join(template_path, '.'), day_path, verbose: true)

  code_path = File.join('lib', 'main.rb')
  gen_replace(File.join(template_path, code_path), File.join(day_path, code_path), /YEARDAY/, "#{year}#{day}")
  test_path = File.join('test', 'tc_main.rb')
  gen_replace(File.join(template_path, test_path), File.join(day_path, test_path), /YEARDAY/, "#{year}#{day}")
end

def gen_replace(src, dst, pattern, replacement)
  new_contents = File.open(src).read.gsub(pattern, replacement)
  File.open(dst, 'w').write(new_contents)
end
