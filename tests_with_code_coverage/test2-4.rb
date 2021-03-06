#!/usr/bin/env ruby

output = `../app/app.rb --sum --file=../inputs/inputs2.txt`
expected_output = <<HEREDOC
Sum: 66.0
HEREDOC

puts `ruby -rtracer ../app/app.rb --sum --file=../inputs/inputs2.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
