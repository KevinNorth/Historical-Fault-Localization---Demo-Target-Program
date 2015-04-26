#!/usr/bin/env ruby

output = `../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/empty.txt`
expected_output = <<HEREDOC
Minimum: 0
Maximum: 0
Average: 0
Sum: 0
Median: 0
Occurrences per mode: 0
HEREDOC

puts `ruby -rtracer ../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/empty.txt`

expected_output << "Modes: \n"
expected_output << "Sorted list: \n"

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
