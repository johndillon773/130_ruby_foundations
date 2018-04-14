# protein_translation.rb
require 'pry'
class InvalidCodonError < StandardError; end

class Translation
  PROTEINS = { "Methionine" => %w(AUG),
               "Phenylalanine" => %w(UUU UUC),
               "Leucine" => %w(UUA UUG),
               "Serine" => %w(UCU UCC UCA UCG),
               "Tyrosine" => %w(UAU UAC),
               "Cysteine" => %w(UGU UGC),
               "Tryptophan" => %w(UGG),
               "STOP" => %w(UAA UAG UGA) }
               
  VALID_CODONS = PROTEINS.values.flatten
  
  def self.of_codon(codon)
    PROTEINS.each { |k, v| return k if v.include?(codon) }
  end
  
  def self.of_rna(strand)
    codons = strand.scan(/[AUGC]{3}/)
    raise InvalidCodonError.new("Invalid Codon") unless valid?(codons)
    proteins = []
    codons.each do |codon|
      protein = of_codon(codon)
      protein == 'STOP' ? break : proteins << protein
    end
    proteins
  end
  
  def self.valid?(codons)
    !codons.empty? && codons.all? { |codon| VALID_CODONS.include?(codon) }
  end
end