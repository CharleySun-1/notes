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



// Enumeration
//
// An enumeration simply lists 

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

// Get the alternate representation of a value in a different base
func getRepresentation(of valueToConvert: Int, inBase base: Int) -> String {
 
    // Create a variable with the value of "valueToConvert"
    // A variable can be changed once created
    var decimalValueLeftToConvert = valueToConvert
    // This creates an empty string
    // A string is just text, like "hello"
    var representation = ""

    //The abstraction we will use is a LOOP
    // Our END CONDITION is that thedecimalValueLeftToConvert is equal to zero
    // So long as the CONDITION is true, the block of code surrounded by the  { } brackets will be run repeatedly
    while decimalValueLeftToConvert > 0 {
       
        // Get the next digit
        let nextDigit = decimalValueLeftToConvert % base
        
        // Add the new digit to the binary representation
        // Swift is a strictly typed language
        // It does not automatically convert data types
        // So, to make the Int into a String, we need to specify this
        representation = String(nextDigit) + representation
        
        // Get the decimal value left to convert
        decimalValueLeftToConvert = decimalValueLeftToConvert / base
        
    }
   return representation

}

// Call, or use the function
getRepresentation(of: 17, inBase: 2)
getRepresentation(of: 17, inBase: 8)
getRepresentation(of: 17, inBase: 16)

// 1 * 16 ^1 + 1 * 16^0 + 16 + 1 = 17

getRepresentation(of: 15, inBase: 16)

getRepresentation(of: 14, inBase: 7)
