#!/usr/bin/env ruby

output = `../app/app.rb --median --file=../inputs/inputs1.txt`
expected_output = <<HEREDOC
Median: 5.5
HEREDOC

puts `ruby -rtracer ../app/app.rb --median --file=../inputs/inputs1.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
