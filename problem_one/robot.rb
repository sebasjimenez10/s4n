class Robot

  attr_accessor :pos_x, :pos_y, :card_pnt

  def initialize(init_params)
    @pos_x = Integer(init_params[0])
    @pos_y = Integer(init_params[1])
    @card_pnt = init_params[2]
  end

  def move(move_letter, mars)
    if( move_letter.eql?("I") )
      I_move()
    elsif move_letter.eql?("D")
      D_move()
    else
      A_move(mars)
    end
  end

  private 

    def I_move()
      if( @card_pnt.eql?("N") )
        @card_pnt = "O"
      elsif( @card_pnt.eql?("S") )
        @card_pnt = "E"
      elsif( @card_pnt.eql?("E") )
        @card_pnt = "N"
      else
        @card_pnt = "S"
      end
    end

    def A_move(mars)

      current_x_pos = Integer(@pos_x)
      current_y_pos = Integer(@pos_y)

      mars.clear_pos(current_x_pos, current_y_pos)

      if( @card_pnt.eql?("N") )
        @pos_y += 1
      elsif( @card_pnt.eql?("S") )
        @pos_y -= 1
      elsif( @card_pnt.eql?("E") )
        @pos_x += 1
      else
        @pos_x -= 1
      end

      mars.place_robot(self)

    end

    def D_move()
      if( @card_pnt.eql?("N") )
        @card_pnt = "E"
      elsif( @card_pnt.eql?("S") )
        @card_pnt = "O"
      elsif( @card_pnt.eql?("E") )
        @card_pnt = "S"
      else
        @card_pnt = "N"
      end
    end

end