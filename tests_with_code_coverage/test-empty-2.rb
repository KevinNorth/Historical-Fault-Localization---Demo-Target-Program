#!/usr/bin/env ruby

output = `../app/app.rb --max --file=../inputs/empty.txt`
expected_output = <<HEREDOC
Maximum: 0
HEREDOC

puts `ruby -rtracer ../app/app.rb --max --file=../inputs/empty.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
