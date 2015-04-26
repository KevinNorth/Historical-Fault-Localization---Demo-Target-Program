#!/usr/bin/env ruby

output = `../app/app.rb --median --file=../inputs/inputs2.txt`
expected_output = <<HEREDOC
Median: 6.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --median --file=../inputs/inputs2.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
