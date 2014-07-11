require_relative 'robot'

# IO Files
inputFile = File.new("robots_input.txt", "r")
outputFile = File.new("robots_output.txt", "w")

# Grid Size => Not used at all
grid_size = inputFile.gets

while( line = inputFile.gets )

  robot = Robot.new( line.chomp.split(" ") )

  line = inputFile.gets
  line.chomp.split('').each do |mv|
    robot.move(mv)
  end

  outputFile.print robot.pos_x
  outputFile.print " "
  outputFile.print robot.pos_y
  outputFile.print " "
  outputFile.print robot.card_pnt
  outputFile.puts ""

end

outputFile.close