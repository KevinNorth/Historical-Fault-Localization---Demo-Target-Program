#!/usr/bin/env ruby

output = `../app/app.rb --modes --file=../inputs/inputs5.txt`
expected_output = <<HEREDOC
Occurrences per mode: 10
Modes: 1.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
