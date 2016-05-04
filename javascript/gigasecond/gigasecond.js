var Gigasecond = function(start) {
  this.start = start;
  this.giga = 1000000000000;
};


Gigasecond.prototype.date = function() {
  return new Date(this.start.getTime() + this.giga);
}

module.exports = Gigasecond;