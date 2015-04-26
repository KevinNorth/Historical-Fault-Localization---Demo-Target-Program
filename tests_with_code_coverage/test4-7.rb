#!/usr/bin/env ruby

output = `../app/app.rb --sort --file=../inputs/inputs4.txt`
expected_output = <<HEREDOC
Sorted list: 0.03582272511999662, 0.05830356822156013, 0.21913224166917844, 0.23878086918767083, 0.372999931911993, 0.4316768728533411, 0.5653239435333242, 0.5803473069283577, 0.62649886309516, 0.6561498175538308, 0.8143217176097249
HEREDOC

puts `ruby -rtracer ../app/app.rb --sort --file=../inputs/inputs4.txt`

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
