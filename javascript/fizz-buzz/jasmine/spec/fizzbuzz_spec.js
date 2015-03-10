describe("Fizz", function() {
  var fizz;

  it("should return true if a number is divisible by 3", function() {
    fizz = new Fizz(3);
    expect(fizz.is()).toEqual(true);
  });

  it("should return Fizz", function() {
    fizz = new Fizz(3);
    expect(fizz.output()).toEqual("Fizz");
  });

});