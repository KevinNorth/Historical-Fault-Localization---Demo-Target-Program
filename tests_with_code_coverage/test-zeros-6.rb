#!/usr/bin/env ruby

output = `../app/app.rb --modes --file=../inputs/zeros.txt`
expected_output = <<HEREDOC
Occurrences per mode: 169
Modes: 0.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --modes --file=../inputs/zeros.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
