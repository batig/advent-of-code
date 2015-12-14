require 'set'

class Position
  def initialize(x = 0, y = 0)
    @x = x
    @y = y
  end

  def move(direction)
    case direction
    when '^' then @x += 1
    when 'v' then @x -= 1
    when '>' then @y += 1
    when '<' then @y -= 1
    end
    self.to_s
  end

  def to_s
    @x.to_s + ', ' + @y.to_s
  end
end


destinations   = Set.new
santa_position = Position.new
robo_position  = Position.new
destinations.add(santa_position.to_s)

directions   = IO.read('day_3.input')
directions.split('').each_with_index do |d, idx|
  if idx % 2 == 0
    destinations.add(santa_position.move(d))
  else
    destinations.add(robo_position.move(d))
  end
end
puts destinations.size
