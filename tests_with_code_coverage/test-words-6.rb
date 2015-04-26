#!/usr/bin/env ruby

output = `../app/app.rb --modes --file=../inputs/words.txt`
expected_output = <<HEREDOC
Occurrences per mode: 5
Modes: 0.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --modes --file=../inputs/words.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
