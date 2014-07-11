require_relative('comm_perm')

# IO Files
inputFile = File.new("perm_input.txt", "r")
outputFile = File.new("perm_output.txt", "w")

comm_perm = CommPerm.new

while( line = inputFile.gets )

  string_a = line.chomp
  line = inputFile.gets
  string_b = line.chomp

  results = comm_perm.calculate(string_a, string_b)

  if(results != nil)
    results.each do |word|
      outputFile.puts word
    end
  end

end