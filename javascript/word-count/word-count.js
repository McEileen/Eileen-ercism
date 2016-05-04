var Words = function(){
};

Words.prototype.count = function(phrase) {
  var resultsHash = {};
  var phraseTrimmed = phrase.replace("  ", " ").trim();
  var phraseDivided = phraseTrimmed.split(/\s/);

  for (var i = 0; i < phraseDivided.length; i++){
    resultsHash[phraseDivided[i]] = (+resultsHash[phraseDivided[i]] || 0) + 1;
  };
  return resultsHash;
}



module.exports = Words;