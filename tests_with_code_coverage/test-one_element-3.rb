#!/usr/bin/env ruby

output = `../app/app.rb --avg --file=../inputs/one_element.txt`
expected_output = <<HEREDOC
Average: 42.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --avg --file=../inputs/one_element.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
