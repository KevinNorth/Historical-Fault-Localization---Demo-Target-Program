#!/usr/bin/env ruby

output = `../app/app.rb --sort --file=../inputs/words.txt`
expected_output = <<HEREDOC
Sorted list: 0.0, 0.0, 0.0, 0.0, 0.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --sort --file=../inputs/words.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
