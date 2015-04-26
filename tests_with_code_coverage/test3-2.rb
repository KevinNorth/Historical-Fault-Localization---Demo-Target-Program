#!/usr/bin/env ruby

output = `../app/app.rb --max --file=../inputs/inputs3.txt`
expected_output = <<HEREDOC
Maximum: 0.8448165453001573
HEREDOC

puts `ruby -rtracer ../app/app.rb --max --file=../inputs/inputs3.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
