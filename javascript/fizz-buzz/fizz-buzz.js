function Fizz(value) {
  this.is = function() {
    if (value % 3 == 0) { return true; }
  };
  this.output = function() {
    return "Fizz";
  };
};

function Buzz(value) {
  this.is = function() {
    if (value % 5 == 0) { return true; }
  };
  this.output = function() {
    return "Buzz";
  };
};

function FizzBuzz(value) {
  this.is = function() {
    if (value % 15 == 0) { return true; }
  };
  this.output = function() {
    return "FizzBuzz";
  };
};

function Num(value) {
  this.is = function() {
    return true;
  };
  this.output = function() {
    return value;
  };
};

function FizzyBuzzy(value) {
  this.check = function() {
    var fizz = new Fizz(value);
    var buzz = new Buzz(value);
    var fizzbuzz = new FizzBuzz(value);
    var num = new Num(value);

    var checkArray = [fizzbuzz, buzz, fizz, num];
    
    for (var i = 0; i < checkArray.length; i++) {
      if ( checkArray[i].is() == true ) {
        return checkArray[i].output();
        break;
      } 
    };

  };
};