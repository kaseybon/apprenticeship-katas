var myStringArray = [FizzClass];
var arrayLength = myStringArray.length;

var number = 5;

for (var i = 0; i < arrayLength; i++) {
    if ( myStringArray[i].is(number) === true ) {
      myStringArray[i].define(number);
    } 
}