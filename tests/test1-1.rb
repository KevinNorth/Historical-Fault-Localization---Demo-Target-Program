#!/usr/bin/env ruby

output = `../app/app.rb --min --file=../inputs/inputs1.txt`
expected_output = <<HEREDOC
Minimum: 1.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
