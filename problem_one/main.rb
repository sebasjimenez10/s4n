require_relative 'robot'
require_relative 'mars'

# IO Files
inputFile = File.new("robots_input.txt", "r")
outputFile = File.new("robots_output.txt", "w")

# Used to initialize Mars
grid_size = inputFile.gets

while( line = inputFile.gets )

  mars = Mars.new(grid_size.chomp)
  robot = Robot.new( line.chomp.split(" ") )

  line = inputFile.gets
  line.chomp.split('').each do |mv|
    robot.move(mv, mars)
  end

  outputFile.print robot.pos_x
  outputFile.print " "
  outputFile.print robot.pos_y
  outputFile.print " "
  outputFile.print robot.card_pnt
  outputFile.puts ""

end

outputFile.close