#!/usr/bin/env ruby

output = `../app/app.rb --sum --file=../inputs/inputs6.txt`
expected_output = <<HEREDOC
Sum: 3.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
