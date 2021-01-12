import Cocoa

var str = "Hello, playground"

// Let's convert the base 10 value of 76 to base 2
76 % 2
76 / 2

38 % 2
38 / 2

19 % 2
19 / 2

9 % 2
9 / 2

4 % 2
4 / 2

2 % 2
2 / 2

1 % 2
1 / 2


// Functions
//
// Functions are a way to group (encapsulate) related behaviour
// Once some behaviour is inside a function, the complexity is hidden
// We can use, or "call", the function whenever we want
/*
 
 Basic syntax of a function:
 
 func functionName(parameter, parameter2, ...) ->return type {
 }
 
 */

// Get the binary representation of a value
func getBinaryRepresentation(of valueToConvert: Int) -> String {
 
    // Create a variable with the value of "valueToConvert"
    // A variable can be changed once created
    var decimalValueLeftToConvert = valueToConvert
    // This creates an empty string
    // A string is just text, like "hello"
    var binaryRepresentation = ""

    //The abstraction we will use is a LOOP
    // Our END CONDITION is that thedecimalValueLeftToConvert is equal to zero
    // So long as the CONDITION is true, the block of code surrounded by the  { } brackets will be run repeatedly
    while decimalValueLeftToConvert > 0 {
       
        // Get the next binary digit
        let nextBinaryDigit = decimalValueLeftToConvert % 2
        
        // Add the new digit to the binary representation
        // Swift is a strictly typed language
        // It does not automatically convert data types
        // So, to make the Int into a String, we need to specify this
        binaryRepresentation = String(nextBinaryDigit) + binaryRepresentation
        
        // Get the decimal value left to convert
        decimalValueLeftToConvert = decimalValueLeftToConvert / 2
    }
   return binaryRepresentation

}

// Call, or use the function
getBinaryRepresentation(of: 17)
