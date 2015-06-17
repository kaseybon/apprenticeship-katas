function Fives(value) {
  this.is = function() {
    if (value >= 5) {
      return true
    }
  }
  this.output = function() {
    return "V"
  }
}

function Ones(value) {
  this.is = function() {
    return true
  }
  this.output = function() {
    return "I"
  }
}


function Numeral(value) {
  this.romanize = function() {
    var ones = new Ones(value);
    var fives = new Fives(value);

    var checkArray = [fives, ones];
    var remainder = value;
    var result = []

    for (var i = 0; i < value; i++) {
      checkArray.forEach(function(check) {
        if (check.is() == true) {
          result.push(check.output());
        }
      });
    }
    return result.join("");
  }
}