#!/usr/bin/env ruby

output = `../app/app.rb --max --file=../inputs/inputs6.txt`
expected_output = <<HEREDOC
Maximum: 2.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --max --file=../inputs/inputs6.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
