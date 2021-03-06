#!/usr/bin/env ruby

output = `../app/app.rb --min --file=../inputs/zeros.txt`
expected_output = <<HEREDOC
Minimum: 0.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --min --file=../inputs/zeros.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
