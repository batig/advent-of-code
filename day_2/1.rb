
total_wrap = 0
File.open("day_2.input", "r") do |f|
  f.each_line do |line|
    length, width, height = line.match(/(\d*)x(\d*)x(\d*)/).captures
    length = length.to_i
    width  = width.to_i
    height = height.to_i

    lw_surface = length * width
    wh_surface = width * height
    hl_surface = height * length

    box_surface = 2 * lw_surface + 2 * wh_surface + 2 * hl_surface
    total_wrap += box_surface + [lw_surface, wh_surface, hl_surface].min
  end
end
puts "Total wrap: " + total_wrap.to_s
