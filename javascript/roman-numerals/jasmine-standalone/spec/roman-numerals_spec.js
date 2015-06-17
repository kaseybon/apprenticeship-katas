describe("Numerals", function() {
  var numeral;
  
  it("should return I for the number 1", function() {
    numeral = new Numeral(1);
    expect(numeral.romanize()).toEqual("I");
  });

  it("should return II for the number 2", function() {
    numeral = new Numeral(2);
    expect(numeral.romanize()).toEqual("II");
  });

  it("should return V for the number 5", function() {
    numeral = new Numeral(5);
    expect(numeral.romanize()).toEqual("V");
  });

});