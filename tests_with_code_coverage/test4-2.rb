#!/usr/bin/env ruby

output = `../app/app.rb --max --file=../inputs/inputs4.txt`
expected_output = <<HEREDOC
Maximum: 0.8143217176097249
HEREDOC

puts `ruby -rtracer ../app/app.rb --max --file=../inputs/inputs4.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
