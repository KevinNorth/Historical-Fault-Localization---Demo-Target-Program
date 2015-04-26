#!/usr/bin/env ruby

output = `../app/app.rb --avg --file=../inputs/empty.txt`
expected_output = <<HEREDOC
Average: 0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
