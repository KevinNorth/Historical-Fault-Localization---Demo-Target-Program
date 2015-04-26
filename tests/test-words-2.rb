#!/usr/bin/env ruby

output = `../app/app.rb --max --file=../inputs/words.txt`
expected_output = <<HEREDOC
Maximum: 0.0
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
