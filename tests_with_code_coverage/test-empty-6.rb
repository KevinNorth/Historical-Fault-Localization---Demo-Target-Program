#!/usr/bin/env ruby

output = `../app/app.rb --modes --file=../inputs/empty.txt`
expected_output = "Occurrences per mode: 0\nModes: \n"

puts `ruby -rtracer ../app/app.rb --modes --file=../inputs/empty.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
