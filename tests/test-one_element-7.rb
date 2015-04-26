#!/usr/bin/env ruby

output = `../app/app.rb --sort --file=../inputs/one_element.txt`
expected_output = <<HEREDOC
Sorted list: 42.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
