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
};