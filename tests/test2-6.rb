#!/usr/bin/env ruby

output = `../app/app.rb --modes --file=../inputs/inputs2.txt`
expected_output = <<HEREDOC
Occurrences per mode: 1
Modes: 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
