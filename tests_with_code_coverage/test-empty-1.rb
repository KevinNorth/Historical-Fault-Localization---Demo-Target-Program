#!/usr/bin/env ruby

output = `ruby -rtracer ../app/app.rb --min --file=../inputs/empty.txt`
expected_output = <<HEREDOC
Minimum: 0
HEREDOC

puts `ruby -rtracer ../app/app.rb --min --file=../inputs/empty.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
