#!/usr/bin/env ruby

output = `../app/app.rb --sort --file=../inputs/empty.txt`
expected_output = "Sorted list: \n"

puts `ruby -rtracer ../app/app.rb --sort --file=../inputs/empty.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
