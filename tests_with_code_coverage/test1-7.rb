#!/usr/bin/env ruby

output = `../app/app.rb --sort --file=../inputs/inputs1.txt`
expected_output = <<HEREDOC
Sorted list: 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --sort --file=../inputs/inputs1.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
