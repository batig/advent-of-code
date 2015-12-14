require 'set'

destinations =  Set.new
position     =  { :x => 0, :y => 0}
destinations.add position.to_s

directions   = IO.read('day_3.input')
directions.split('').each do |d|
  case d
  when '^' then position[:x] += 1
  when 'v' then position[:x] -= 1
  when '>' then position[:y] += 1
  when '<' then position[:y] -= 1
  end
  destinations.add position.to_s
end
puts destinations.size
