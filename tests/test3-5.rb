#!/usr/bin/env ruby

output = `../app/app.rb --median --file=../inputs/inputs3.txt`
expected_output = <<HEREDOC
Median: 0.4489070153632164
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
