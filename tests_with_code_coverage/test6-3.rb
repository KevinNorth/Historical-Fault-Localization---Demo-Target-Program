#!/usr/bin/env ruby

output = `../app/app.rb --avg --file=../inputs/inputs6.txt`
expected_output = <<HEREDOC
Average: 0.6
HEREDOC

puts `ruby -rtracer ../app/app.rb --avg --file=../inputs/inputs6.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
