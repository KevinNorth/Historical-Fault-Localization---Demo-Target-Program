#!/usr/bin/env ruby

output = `../app/app.rb --sum --file=../inputs/empty.txt`
expected_output = <<HEREDOC
Sum: 0
HEREDOC

puts `ruby -rtracer ../app/app.rb --sum --file=../inputs/empty.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
