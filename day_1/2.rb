DIRECTION = {
  "("  => 1,
  ")" => -1
}

floor = 0
directions = IO.read('day_1.input')
directions.split('').each_with_index do |next_floor, idx|
  floor += DIRECTION[next_floor]

  if floor == -1
    puts idx + 1
    break
  end
end
