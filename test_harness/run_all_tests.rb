#!/usr/bin/env ruby

Dir.chdir("../tests")

puts `for file in ./*; do echo "$file"; ./$file; done`
