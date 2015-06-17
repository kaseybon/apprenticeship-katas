function Fizz(value) {
  this.is = function() {
    if (value % 3 == 0 && value != 0) { return true; }
  };
  this.output = function() {
    return "Fizz";
  };
};

function Buzz(value) {
  this.is = function() {
    if (value % 5 == 0 && value != 0) { return true; }
  };
  this.output = function() {
    return "Buzz";
  };
};

function FizzBuzz(value) {
  this.is = function() {
    if (value % 15 == 0 && value != 0) { return true; }
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
    var result = null;
    // for (var i = 0; i < checkArray.length; i++) {
    checkArray.forEach( function(check) {  
      // var check = checkArray[i];
      if ( check.is() == true ) {
        result = check.output();
        break;
      } 
    });
    return result;
  };
};

function counting() {
 var countTo = prompt("How high would you like to count?");

  for (var i = 0; i <= countTo; i++) {
    var x = new FizzyBuzzy(i);
    document.write("<p>" + x.check() + "</p>");
  }

};