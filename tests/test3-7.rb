#!/usr/bin/env ruby

output = `../app/app.rb --sort --file=../inputs/inputs3.txt`
expected_output = <<HEREDOC
Sorted list: 0.0952172221958354, 0.15694592508301086, 0.18933916482503788, 0.3453640462092622, 0.42121102343354566, 0.4766030072928872, 0.6391613132478083, 0.7191164578359537, 0.7536086992201821, 0.8448165453001573
HEREDOC

if output == expected_output
  puts "Passed"
else
  puts "Failed"
end
