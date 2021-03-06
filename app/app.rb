#!/usr/bin/env ruby

require 'optparse'

# Program that takes in a list of numbers and outputs the lists' minimum,
# maximum, average, median, sum, and mode as well as sorts the list. Which
# values are actually calculated can be determined by command-line flags.

def findMinimum(array)
  if array.size == 0
    return 0
  end

  min = array[0]

  for num in array
    if num < min
      min =num
    end
  end

  return min
end

def findMaximum(array)
  if array.size == 0
    return 0
  end

  max = array[0]

  for num in array
    if num > max
      max = num
    end
  end

  return max
end

def findAverage(array)
  if array.size == 0
    return 0
  end

  sum = 0

  for num in array
    sum += num
  end

  return sum / array.size
end

def findSum(array)
  if array.size == 0
    return 0
  end

  sum = 0

  for num in array
    sum += num
  end

  return sum
end

def findMedian(array)
  if array.size == 0
    return 0
  end

  sortedArray = sort(array)

  if sortedArray.size % 2 == 0
    index = sortedArray.size / 2
    return (sortedArray[index - 1] + sortedArray[index]) / 2.0
  else
    return sortedArray[sortedArray.size / 2]
  end
end

# Finds all the modes in the array. Returns a hash with two keys, :occurrences
# and :modes. The :occurrences key is associated with the number of times any
# individual mode appears in the array, and the :modes key is associated with an
# array containing every number that is a mode exactly once.
def findModes(array)
  if array.size == 0
    return {occurrences: 0, modes: []}
  end

  counts = {}

  for num in array
    if counts.keys.include? num
      counts[num] += 1
    else
      counts[num] = 1
    end
  end

  max = 0
  for num in counts.keys
    if counts[num] > max
      max = counts[num]
    end
  end

  results = {occurrences: max, modes: []}

  for num in counts.keys
    if counts[num] == max
      results[:modes].push num
    end
  end

  results[:modes].sort!

  return results
end

def sort(array)
  return array.sort
end

# Command line arguments
options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: app.rb [options]"

  opts.on("--min", "--minimum", "Find the minimum of the list") do |min|
    options[:min] = true
  end

  opts.on("--max", "--maximum", "Find the maximum of the list") do |max|
    options[:max] = true
  end

  opts.on("--avg", "--average", "Find the average of the list") do |avg|
    options[:average] = true
  end

  opts.on("--sum", "--sum", "Find the sum of the list") do |sum|
    options[:sum] = true
  end

  opts.on("--median", "Find the median of the list") do |median|
    options[:median] = true
  end

  opts.on("--modes", "Find the modes of the list") do |modes|
    options[:modes] = true
  end

  opts.on("--sort", "Sort the list") do |sort|
    options[:sort] = true
  end

  opts.on("--file=FILE_PATH",
    "Path to a newline-delimited file containing the list of numbers") do |path|
    options[:path] = path
  end
end.parse!

# Main logic
array = []

input = File.open(options[:path])
input.each_line do |line|
  array.push line.to_f
end
input.close

if options[:min]
  puts "Minimum: #{findMinimum(array)}"
end

if options[:max]
  puts "Maximum: #{findMaximum(array)}"
end

if options[:average]
  puts "Average: #{findAverage(array)}"
end

if options[:sum]
  puts "Sum: #{findSum(array)}"
end

if options[:median]
  puts "Median: #{findMedian(array)}"
end

if options[:modes]
  results = findModes(array)
  puts "Occurrences per mode: #{results[:occurrences]}"
  puts "Modes: #{results[:modes].join(', ')}"
end

if options[:sort]
  puts "Sorted list: #{sort(array).join(', ')}"
end
