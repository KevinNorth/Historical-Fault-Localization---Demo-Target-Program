#!/usr/bin/env ruby

output = `../app/app.rb --sum --file=../inputs/inputs3.txt`
expected_output = <<HEREDOC
Sum: 4.64138340464368
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
