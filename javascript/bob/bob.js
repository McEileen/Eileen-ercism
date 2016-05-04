var Bob = function() {};

Bob.prototype.hey = function(input) {

  var isYelling, isQuestioning, isSilent;

  var isYelling = function() {
    return input === input.toUpperCase() && input !== input.toLowerCase();
  };

  var isQuestioning = function() {
    return input.endsWith('?');
  };

  var isSilent = function() {
    return !input.match(/\S/);
  };


  if (isYelling() === true) {
    return "Whoa, chill out!";
  }
  else if (isQuestioning() === true) {
    return "Sure.";
  }
  else if (isSilent() === true) {
    return "Fine. Be that way!";
  }
  else {
    return "Whatever.";
  };
};

module.exports = Bob;


if (!String.prototype.endsWith) {
  String.prototype.endsWith = function(searchString, position) {
      var subjectString = this.toString();
      if (typeof position !== 'number' || !isFinite(position) || Math.floor(position) !== position || position > subjectString.length) {
        position = subjectString.length;
      }
      position -= searchString.length;
      var lastIndex = subjectString.indexOf(searchString, position);
      return lastIndex !== -1 && lastIndex === position;
  };
}