#!/usr/bin/env ruby

output = `../app/app.rb --avg --file=../inputs/inputs4.txt`
expected_output = <<HEREDOC
Average: 0.41812344160764886
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
