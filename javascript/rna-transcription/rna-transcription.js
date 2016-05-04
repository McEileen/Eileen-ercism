var DnaTranscriber = function() {

};

  const toRnaMap = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U'
  };

DnaTranscriber.prototype.toRna = function(input) {
  return input.split('').map(function(nucleotide) {
    if (toRnaMap.hasOwnProperty(nucleotide)) {
      return toRnaMap[nucleotide];
    } else {
      throw new Error (nucleotide + 'is not a valid nucleotide');
    }
  }).join('');
};

module.exports = DnaTranscriber;