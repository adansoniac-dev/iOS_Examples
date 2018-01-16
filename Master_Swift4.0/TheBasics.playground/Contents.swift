// Constants and Variables
let maximumNumberOfLoginAttempts = 10               //constant declared using "let"
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

var welcomeMessage : String                     //type annotation
welcomeMessage = "Hello there world!!!"

var red, green, blue : Double

var `var` = "Never a good idea"             //  this is what you would do if you really wanted to use a Swift keyword, in practice, you should never use reserved words
print(`var`)

var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour"

let languageName = "Swift"
// languageName = "Swift++"   --> you couldn't get away with this because constants cannot be changed

print(friendlyWelcome)

print("The current value of friendlyWelcome is \(friendlyWelcome)")         // string interpolation

//semicolon totally optional
let cat = "😾"; print(cat)


//Integers
let minValue8 = UInt8.min; print(minValue8)
let minValue16 = UInt16.min; print(minValue16)
let minValue32 = UInt32.min; print(minValue32)
let minValue64 = UInt64.min; print(minValue64)
print()
let maxValue8 = UInt8.max; print(maxValue8)
let maxValue16 = UInt16.max; print(maxValue16)
let maxValue32 = UInt32.max; print(maxValue32)
let maxValue64 = UInt64.max; print(maxValue64, UInt.max, "Same since I am on a 64-bit system")
print()
print(Int8.max)
print(Int16.max)
print(Int32.max)
print(Int64.max, Int.max, "Same since I am on a 64-bit system")

// Floating-Point Numbers

let pi_double : Double = 3.141592653589793238462643383279502884197169399375105820974944592307816406286
print(pi_double)           // Double's precision value is at least 15

let pi_float : Float = 3.141592653589793238462643383279502884197169399375105820974944592307816406286
print(pi_float)             // Float's precision as little as 6

//Type-safe & Type Inference
let meaningOfLife = 42              // inferred as Int

let another_pi = 3.14159            // inferred as Double; Swift always chooses Double

let more_pi = 3 + 0.14159           // also inferred as Double


// Numeric Literals
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

var exponentials = 1.25e2
exponentials = 1.25e-2

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Type Conversion
let twoThousand : UInt16 = 2_000
let one : UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi_withConversion = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi_withConversion)

// Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

// Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false
let explicitBoolean : Bool
explicitBoolean = true

if turnipsAreDelicious {
    print("Mmmm, tasty turnips!")
} else {
    print("Ewww, turnips are horrible.")
}

let i = 1
if i == 1 {
    print("Value for i must be 1")
}



// Tuples
let http404Error = (404, "Not Found")
print(http404Error)
print(http404Error.0)
print(http404Error.1)

let (statusCode, statusMessage) = http404Error          // decomposing a tuple
print("The status code is \(statusCode)")
print("the status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")



// Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber!)                 // because there is a possibility this won't have the number, it is an optional

var serverResponseCode: Int? = 404
serverResponseCode = nil
0

var surveyAnswer: String?           // automatically set to nil

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}


/*
 At this point, I feel that I have the basic flow of Swift.
 Moving on to Basic Operators
 */
