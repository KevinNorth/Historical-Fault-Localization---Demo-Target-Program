#!/usr/bin/ruby

require 'optparse'

# Runs all of the tests for app.rb, collecting code coverage information for
# each test in the process

# Command line arguments
# Example: ./code_coverage.rb --work-directory=.. --commit-hash="" --output_file=/Users/ThePondermatic/Desktop/out.txt
options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: code_coverage.rb [options]"

  opts.on("--work-directory=DIR_PATH",
    "Path to the root directory of the app.rb project") do |dir_path|
    options[:work_directory] = dir_path
  end

  opts.on("--commit-hash=HASH",
    "SHA1 hash of the commit being analyzed") do |hash|
    options[:hash] = hash
  end

  opts.on("--commit-timestamp=TIMESTAMP",
    "Path to the root directory of the app.rb project") do |timestamp|
    options[:timestamp] = timestamp
  end

  opts.on("--output_file=OUTPUT_PATH",
    "Path to the file where output should be saved") do |output_file|
    options[:output_file] = output_file
  end
end.parse!

# Takes the code coverage output of a test and determines which individual lines
# of code were executed
def process_test_output(test_output)
  lines_executed = []
  passed = false

  test_output.each_line do |line|
    if match = line.match(/^#\d:\.\.\/app\/app.rb:(\d+):/)
      line_number = match.captures[0].to_i
      unless lines_executed.include? line_number
        lines_executed.push line_number
      end
    end
  end

  passed = false
  if test_output[-7..-1] == "Passed\n"
    passed = true
  end

  return {passed: passed, lines_executed: lines_executed.sort}
end

# Main program
Dir.chdir("#{options[:work_directory]}/tests_with_code_coverage")

test_results = []

for test in Dir.entries(".")
  if test.match(/.*.rb/)
    test_output = `./#{test}`
    test_results.push process_test_output(test_output)
  end
end

str = ""

for test_result in test_results
  if test_result[:passed]
    str += "passed "
  else
    str += "failed "
  end

  for line_executed in test_result[:lines_executed]
    str += "app.rb #{line_executed} "
  end

  str += "\n"
end

File.open(options[:output_file], 'w') { |file| file.write(str) }
