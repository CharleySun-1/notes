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
// An enumeration simply lists possibilities
// The : Int... that defines the type of the raw vlue associated with a case
//
// This is another example of abstraction
// - hides complexity
// - makes the call site easier to read
// e.g.: getRepresentation (of : 17, inBase: binary)
enum NumberSystemBase: Int {
    case binary = 2    // 2 is the raw value for this case
    case octal = 8
    case hexadecimal = 16
}



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
func getRepresentation(of valueToConvert: Int, inBase base: NumberSystemBase) -> String {
 
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
        let nextDigit = decimalValueLeftToConvert % base.rawValue
        
        // Add the new digit to the binary representation
        // Swift is a strictly typed language
        // It does not automatically convert data types
        // So, to make the Int into a String, we need to specify this
        //
        // If statement
        //
        // Check a condition - when true, do one thing.
        //                   - when false, do something else
        if base == .hexadecimal {
            // We know the base is hexadecimal ( conditon was TRUE)
            
            // Carefully set the next digit
            // When something other than 0 to ... use ABCDEF
            //
            // Switch statement evaluates some value
            //
            // ANd take different actions depending on the value
            switch nextDigit {
            case 0...9:
                representation = String(nextDigit) + representation
            case 10:
                representation = "A" + representation
            case 11:
                representation = "B" + representation
            case 12:
                representation = "C" + representation
            case 13:
                representation = "D" + representation
            case 14:
                representation = "E" + representation
            case 15:
                representation = "F" + representation
          default:
                break
            }
            
        } else {
            // The base is octal or binary (condition was FLASE)
        representation = String(nextDigit) + representation
        }
        // Get the decimal value left to convert
        decimalValueLeftToConvert = decimalValueLeftToConvert / base.rawValue
        
    }
   return representation

}

//Call, or use the function
getRepresentation(of: 17, inBase: .binary)
getRepresentation(of: 17, inBase: .octal)
getRepresentation(of: 17, inBase: .hexadecimal)
//
// 1 * 16 ^1 + 1 * 16^0 + 16 + 1 = 17
//
getRepresentation(of: 31, inBase: .hexadecimal)

