class Mars

  def initialize(grid_size)
    int_size = grid_size.split(' ').map{ |i| i.to_i }
    @size_x = int_size[0]
    @size_y = int_size[1]
    @grid_field = Array.new(int_size[0]) { Array.new(int_size[1], 0) }
  end

  def place_robot(robot)
    validate_bounds(robot.pos_x, robot.pos_y)
    @grid_field[robot.pos_x - 1][robot.pos_y - 1] = robot
  end

  def clear_pos(x, y)
    validate_bounds(x, y)
    @grid_field[x - 1][y - 1] = 0
  end

  def validate_bounds(x, y)

    if( x -1 > @size_x - 1)
      raise StandardError.new("La posicion x = #{x - 1} deseada esta por fuera de la grilla")
    end

    if( y -1 > @size_y - 1 )
      raise StandardError.new("La posicion y = #{y - 1} deseada esta por fuera de la grilla")
    end

  end

end