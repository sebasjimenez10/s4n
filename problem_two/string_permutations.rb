a = "the"
b = "street"

common_letters = a.split('') & b.split('')

if( common_letters.length == 0 )
  puts 'No hay subsecuencias comunes entre #{a} y #{b}'
elsif( common_letters.length == 1 )
  puts common_letters[0]
else
  # Hacer la magia aqui
  perm_size = common_letters.length

  a_arr = a.split('')
  b_arr = b.split('')

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

  arr.sort!
  
  arr.each do |word|
    puts word
  end

end

# 1. Encontrar las letras comunes
# 2. La cantidad de letras comunes define la longitud de la permutacion
# 3. Crear lista de permutaciones de la longitud de las letras comunes
#     (i.e dos letras comunes, permutaciones de longitud 2)
# 4. Listar