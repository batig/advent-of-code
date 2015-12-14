
total_wrap = 0
total_ribbon = 0
File.open("day_2.input", "r") do |f|
  f.each_line do |line|
    length, width, height = line.match(/(\d*)x(\d*)x(\d*)/).captures
    length = length.to_i
    width  = width.to_i
    height = height.to_i

    lw_surface = length * width
    wh_surface = width  * height
    hl_surface = height * length
    min_surface = [lw_surface, wh_surface, hl_surface].min

    case min_surface
    when length * width
      ribbon_wrap = 2 * length + 2 * width
    when width  * height
      ribbon_wrap = 2 * width + 2 * height
    when height * length
      ribbon_wrap = 2 * height + 2 * length
    end
    ribbon_bow = length * width  * height

    box_surface = 2 * lw_surface + 2 * wh_surface + 2 * hl_surface
    total_wrap += box_surface + min_surface
    total_ribbon += ribbon_wrap + ribbon_bow
  end
end
puts "Total ribbon: " + total_ribbon.to_s
