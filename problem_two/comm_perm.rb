class CommPerm

  def calculate(string_a, string_b)

    common_letters = string_a.split('') & string_b.split('')

    if( common_letters.length == 0 )
      puts 'No hay subsecuencias comunes entre #{string_a} y #{string_b}'
      return nil
    elsif( common_letters.length == 1 )
      arr = Array.new
      arr.push(common_letters[0])
      return arr
    else
      # Magic here
      perm_size = common_letters.length

      a_arr = string_a.split('')
      b_arr = string_b.split('')

      a_perm = a_arr.permutation(perm_size).to_a
      b_perm = b_arr.permutation(perm_size).to_a

      result = a_perm & b_perm
      
      arr = Array.new

      result.each do |sln|
        word = ""
        sln.each do |l|
          word.concat(l)
        end
        arr.push(word)
      end

      arr
    end
  end

end