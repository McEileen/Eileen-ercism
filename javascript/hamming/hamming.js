var Hamming = function() {

};

Hamming.prototype.compute = function(firstStrand, secondStrand) {

  if (firstStrand.length !== secondStrand.length) {
    throw new Error('DNA strands must be of equal length.');
  };

  var diff = 0;

  for (i = 0; i < firstStrand.length; i++) {
    if (firstStrand[i] != secondStrand[i]) {
      diff = diff + 1;
    };
  };
  return diff;
};


module.exports = Hamming;