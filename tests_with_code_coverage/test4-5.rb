#!/usr/bin/env ruby

output = `../app/app.rb --median --file=../inputs/inputs4.txt`
expected_output = <<HEREDOC
Median: 0.4316768728533411
HEREDOC

puts `ruby -rtracer ../app/app.rb --median --file=../inputs/inputs4.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
