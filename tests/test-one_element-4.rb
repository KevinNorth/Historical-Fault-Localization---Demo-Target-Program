#!/usr/bin/env ruby

output = `../app/app.rb --sum --file=../inputs/one_element.txt`
expected_output = <<HEREDOC
Sum: 42.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
