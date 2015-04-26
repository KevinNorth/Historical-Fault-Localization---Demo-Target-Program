#!/usr/bin/env ruby

output = `../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/inputs1.txt`
expected_output = <<HEREDOC
Minimum: 1.0
Maximum: 10.0
Average: 5.5
Sum: 55.0
Median: 5.5
Occurrences per mode: 1
Modes: 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
Sorted list: 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --min --modes --max --avg --sum --median --sort --file=../inputs/inputs1.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
