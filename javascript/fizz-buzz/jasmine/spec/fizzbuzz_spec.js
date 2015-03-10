describe("Fizz", function() {
  var fizz;

  beforeEach(function() {
    fizz = new Fizz(3);
  });

  it("should return true if a number is divisible by 3", function() {
    expect(fizz.is()).toEqual(true);
  });

  it("should return Fizz", function() {
    expect(fizz.output()).toEqual("Fizz");
  });

});

describe("Buzz", function() {
  var buzz;

  beforeEach(function() {
    buzz = new Buzz(5);
  });

  it("should return true if a number is divisible by 5", function() {
    expect(buzz.is()).toEqual(true);
  });

  it("should return Buzz", function() {
    expect(buzz.output()).toEqual("Buzz");
  });

});

describe("FizzBuzz", function() {
  var fizzbuzz;

  beforeEach(function() {
    fizzbuzz = new FizzBuzz(15);
  });

  it("should return true if a number is divisible by 15", function() {
    expect(fizzbuzz.is()).toEqual(true);
  });

  it("should return FizzBuzz", function() {
    expect(fizzbuzz.output()).toEqual("FizzBuzz");
  });

});

describe("FizzyBuzzy", function() {
  var fizzybuzzy;

  it("should return 1 if passed 1", function() {
    fizzybuzzy = new FizzyBuzzy(1);
    expect(fizzybuzzy.check()).toEqual(1);
  });

  it("should return Fizz if passed 3", function() {
    fizzybuzzy = new FizzyBuzzy(3);
    expect(fizzybuzzy.check()).toEqual("Fizz");
  });

  it("should return Buzz if passed 5", function() {
    fizzybuzzy = new FizzyBuzzy(5);
    expect(fizzybuzzy.check()).toEqual("Buzz");
  });

});