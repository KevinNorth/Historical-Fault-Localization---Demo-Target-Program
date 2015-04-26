#!/usr/bin/env ruby

output = `../app/app.rb --sum --file=../inputs/inputs4.txt`
expected_output = <<HEREDOC
Sum: 4.599357857684137
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
