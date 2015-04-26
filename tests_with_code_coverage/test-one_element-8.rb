#!/usr/bin/env ruby

output = `../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/one_element.txt`
expected_output = <<HEREDOC
Minimum: 42.0
Maximum: 42.0
Average: 42.0
Sum: 42.0
Median: 42.0
Occurrences per mode: 1
Modes: 42.0
Sorted list: 42.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/one_element.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
