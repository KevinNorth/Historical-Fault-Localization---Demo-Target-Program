#!/usr/bin/env ruby

output = `../app/app.rb --avg --file=../inputs/inputs2.txt`
expected_output = <<HEREDOC
Average: 6.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
