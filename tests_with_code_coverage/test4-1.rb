#!/usr/bin/env ruby

output = `../app/app.rb --min --file=../inputs/inputs4.txt`
expected_output = <<HEREDOC
Minimum: 0.03582272511999662
HEREDOC

puts `ruby -rtracer ../app/app.rb --min --file=../inputs/inputs4.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
