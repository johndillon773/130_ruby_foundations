# point_mutations.rb

class DNA
  def initialize(strand)
    @strand = strand
  end
  
  def hamming_distance(strand)
    differences = 0
    @strand.chars.each_with_index do |letter, idx|
      break if letter.nil? || strand[idx].nil?
      differences += 1 if letter != distance[idx]
    end
    differences
  end
end