#!/usr/bin/env ruby

output = `../app/app.rb --median --file=../inputs/zeros.txt`
expected_output = <<HEREDOC
Median: 0.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
