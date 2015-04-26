#!/usr/bin/env ruby

output = `../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/inputs2.txt`
expected_output = <<HEREDOC
Minimum: 1.0
Maximum: 11.0
Average: 6.0
Sum: 66.0
Median: 6.0
Occurrences per mode: 1
Modes: 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0
Sorted list: 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
