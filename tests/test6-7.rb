#!/usr/bin/env ruby

output = `../app/app.rb --sort --file=../inputs/inputs6.txt`
expected_output = <<HEREDOC
Sorted list: -3.0, 1.0, 1.0, 2.0, 2.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
