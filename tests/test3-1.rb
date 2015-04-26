#!/usr/bin/env ruby

output = `../app/app.rb --min --file=../inputs/inputs3.txt`
expected_output = <<HEREDOC
Minimum: 0.0952172221958354
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
