#!/usr/bin/env ruby

output = `../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/inputs6.txt`
expected_output = <<HEREDOC
Minimum: -3.0
Maximum: 2.0
Average: 0.6
Sum: 3.0
Median: 1.0
Occurrences per mode: 2
Modes: 1.0, 2.0
Sorted list: -3.0, 1.0, 1.0, 2.0, 2.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
