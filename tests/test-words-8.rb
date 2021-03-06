#!/usr/bin/env ruby

output = `../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/words.txt`
expected_output = <<HEREDOC
Minimum: 0.0
Maximum: 0.0
Average: 0.0
Sum: 0.0
Median: 0.0
Occurrences per mode: 5
Modes: 0.0
Sorted list: 0.0, 0.0, 0.0, 0.0, 0.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
