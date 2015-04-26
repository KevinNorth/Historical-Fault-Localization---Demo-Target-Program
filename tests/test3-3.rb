#!/usr/bin/env ruby

output = `../app/app.rb --avg --file=../inputs/inputs3.txt`
expected_output = <<HEREDOC
Average: 0.46413834046436797
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
