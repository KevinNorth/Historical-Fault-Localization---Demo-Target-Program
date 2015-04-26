#!/usr/bin/env ruby

output = `../app/app.rb --min --file=../inputs/inputs5.txt`
expected_output = <<HEREDOC
Minimum: 1.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --min --file=../inputs/inputs5.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
