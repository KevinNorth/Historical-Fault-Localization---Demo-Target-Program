#!/usr/bin/env ruby

output = `../app/app.rb --max --file=../inputs/one_element.txt`
expected_output = <<HEREDOC
Maximum: 42.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
