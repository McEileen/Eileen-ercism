console.log("hello");

var Pangram = function(sentence){
  console.log("first");
  this.sentence = sentence;
  console.log("second");
};

Pangram.prototype.isPangram = function(){
  console.log("below should be blank");
  console.log(this.sentence);
  return this.sentence !== "";
};