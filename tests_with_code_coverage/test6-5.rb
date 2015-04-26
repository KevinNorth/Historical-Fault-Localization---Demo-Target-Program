#!/usr/bin/env ruby

output = `../app/app.rb --median --file=../inputs/inputs6.txt`
expected_output = <<HEREDOC
Median: 1.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --median --file=../inputs/inputs6.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
