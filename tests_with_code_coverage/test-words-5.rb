#!/usr/bin/env ruby

output = `../app/app.rb --median --file=../inputs/words.txt`
expected_output = <<HEREDOC
Median: 0.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --median --file=../inputs/words.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
