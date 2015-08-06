
//: Playground - noun: a place where people can play
import UIKit

/*
 * Swift Essential Learning Practice 
 */

//Declaring variables using var and let.

// variable declarations

// Type Inference.
var intValue = 10
var booleanValue = true
var stringValue = "Hello World!"

// Explicit Type annotation.
var intValue2:Int = 10
var booleanValue2:Bool = false
var stringValue2:String = "Sharath, Bhaskara"
var doubleValue2:Double = 10.0
var floatValue2: Float = 1.23

// constant declarations
let intConst1 = 32
let intConst2: Int = 32

// flow control

// If and Else IF
let intValue3 = 10
if intValue3 > 10 {
    println("int value is \(intValue3) > 10")
}else if intValue < 10 {
    println("int value is \(intValue3) < 10")
}else{
    println("Int value is \(intValue3) = 10")
}

// Switch Statement
let intValue4 = 5
switch intValue4 {
case 0:
    println("Value is Zero")
case 1:
println("Value is One")
case 5:
    println("Value is Five") //break is implicit and not needed explicitly to stop further execution
case 6:
    println("Value is Six")
default:
    println("Valus cannot be translated")
}

// switch range
switch intValue4 {
case 0...3: // 0 and 3 are included in this range (Closed Range)
    println("Value is Less than or equal to 3")
case 4..<6: // 4 is included and 6 is excluded in this range (Open Range)
    println("Value is less than 6")
case 6...10:
    println("Value is Greater than or equal to 6")
default:
    println("Value is greater than 10")
}

//For Loop
for (var i=0;i<10;i++){ // Loops 10 times, including 0 and excluding 10
    println("\(i) th iteration")
}

// For In loop

for index in 0...10 { // Loops 11 times, including 0 and 10 iteration values
    println("\(index) th iteration")
}


for index in 0..<10 { // Loops 10 times, including 0 and excluding 10 
    println("\(index) th iteration")
}





// Defining Arrays and Manipulation

//Type Inference
var daysArray1 = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"]
var monthsArray1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

// explicit type annotation.
var daysArray2: [String]
daysArray2 = ["sun", "mon", "tue", "thu", "fri", "sat"]

//Adding / Appending values
println("Array before any updations : \(daysArray2)")
daysArray2[0] = "Sunday" // Editing or updating values
println("Updating value using index assignment \(daysArray2)")

daysArray2.insert("Wednesday", atIndex: 3) // Inserting a value in  between the current values
println("Using insert at index with value wednesday : \(daysArray2)")

daysArray2.append("Saturday") // Appends at the end of the array
println("Using append Method to add Satuday \(daysArray2)")

daysArray2.removeLast(); // Removes the last item of the array
daysArray2 += ["Saturday"] // another method to append an item at the end of array
println("Using concat operator to add elements at the end of the array : \(daysArray2)")


// Looping
for(var index1=0; index1<10;index1++){
    println("\(index1)");
}

for index2 in 1...10{
    println("\(index2)")
}

for day in daysArray1 {
    println("\(day)")
}

let stringConst1 = "Sharath Bhasakra"
for char in stringConst1 {
    println("\(char)")
}

var index3 = 0
while(index3 < 5){
    println("Value is \(index3)")
    index3++
}

var index4 = 0
do{
println("value is \(index4)")
index4++
}while(index4<1)

// functions
func printName(name : String){ // Single argument
    println("Hi Mr. \(name)")
}
printName("Sharath")

func printName(firstName: String, lastName:String){ // Multiple Arguments -- all input params are constants
    println("Hi Mr. \(lastName), \(firstName)")
}

printName("Sharath", "Bhaskara")

func formatName(firstName: String, var lastName:String) -> (String) {
     lastName = "World"
    return "Mr. \(lastName), \(firstName)"
}

println(formatName("Sharath", "Bhaskara"))

func formatName2(prefix:String = "Mr.",firstName:String = "Hello", lastName:String) -> (String) {
    return "\(prefix) \(firstName), \(lastName)"
}

println(formatName2(prefix:"Mrs.", firstName:"Sudha", "Gopalakrishnan"))


func returnMultipleValues () -> (name:String, age:Int) { // Function return multiple values using tuples
    return ("Sharath", 30)
}
let result = returnMultipleValues()
println("Age of \(result.0) is \(result.1)") // using indexes to get tuple values
println("Age of \(result.name) is \(result.age)") // using alias names defined in function
let (n,a) = returnMultipleValues () // using custom names for tuple values
println("Age of \(n) is \(a)")


// Optionals
var intValue5 : Int? // Value not needed for optionals.
var intValue6 : Int?
if(intValue5 != nil) {
     println("Value is \(intValue5)")
    println("Value is \(intValue5!)") // unwrapping explicitly from optional
}else {
println("Value is \(intValue5)")
}
//println("Value is \(intValue6!)") // results runtime error as value not assigned and made strict value


// Dictionaries - similar to map in java, data stored as key, value pairs
var months = ["JAN":"January", "FEB":"February"]
months.updateValue("March", forKey: "MAR")
months.updateValue("April", forKey: "APR")
months.updateValue("May", forKey: "MAY")
months.updateValue("JUNE", forKey: "JUN")
months.updateValue("June", forKey:"JUN")
months["JUL"] = "July"
months["JUL"] = "JULY"
months.updateValue("July", forKey: "JUL")
println(months)
println(months["Jul"])
println(months["JUL"])

for (key,value) in months {
    println("\(key) expanded form is \(value)")
}

if let key = months["May"]{ // If Let using Optional Binding, as the value is not there then key constant is not created.
    println("Month is \(key)")
}else{
    println("Month not found")
}


if let key = months["MAY"]{ // As the value is there in this dictionary the key constant is created and unwrapped automatically from the optional value.
    println("Month is \(key)") // automatically unwrapped from optional
    println(months["MAY"]) // needs to be explicitly unwrapped from optional
}else{
    println("Month not found")
}

// Enumerations
enum Day{
    case Monday, Tuesday, Wednesday, Thursday
    case Friday
    case Saturday
    case Sunday
}

var dayOfBirth : Day = Day.Sunday
println(dayOfBirth.hashValue)
dayOfBirth = .Friday
println(dayOfBirth.hashValue)


switch dayOfBirth {
case .Monday:
    println("Monday")
case .Tuesday:
    println("Tuesday")
case .Wednesday:
    println("Wednesday")
case .Thursday:
    println("Thursday")
case .Friday:
    println("Friday")
case .Saturday:
    println("Satuday")
case .Sunday:
    println("Sunday")
}

// Closures

var pritnSharath = {
    println("Hi Sharath")
}

func usePrinter(printer:()->()){
    for index in 0..<5 {
        printer()
    }
}

usePrinter(pritnSharath)
usePrinter({
    println("Hi Sharath Chand Bhaskara")
    })

let addition = { (val1: Int, val2:Int)->Int? in
    return val1+val2
}
let subtraction = { (val1: Int, val2:Int)->Int? in
    return val1-val2
}
let multiplication = { (val1:Int, val2:Int)->Int? in
    return val1+val2
}
let division = { (val1:Int, val2:Int)->Int? in
    return val1/val2
}

println(addition(2,3))

// Fucntion that uses a closure as a parameter
func useMathOperation(operation : (Int, Int)->Int?, firstValue:Int, secondValue:Int)->Int{
    println(operation(firstValue, secondValue))
    return operation(firstValue,secondValue)!
}
useMathOperation(addition, 100, 50)
useMathOperation(subtraction, 100, 50)

//Function that returns a closure
func mathOperation(name:String)->(Int,Int)->Int?{
    var function = {(a:Int, b:Int)->Int? in
        var result:Int?
        return result
    }
    switch name {
        case "Add":
            function = addition
        case "Sub":
            function = subtraction
        case "Mul":
        function = multiplication
        case "Div":
        function = division
        case "+":
        function = addition
        case "-":
        function = subtraction
        case "*":
        function = multiplication
        case "/":
        function = division
    default:
        break
        
    }
    return function
}
println(mathOperation("+")(5,8))

if let result = mathOperation("Sub")(100,50) {
    println("Result of the math opearation is : \(result)")
}

// Classes
class Sharath{
    // preoperties
    var name: String = "Sharath, Bhaskara"
    var id: Int = 204925
    // methods
    func description() -> String{
        return "Person \(name) and his id is \(id)"
    }
    
}

func getAddressFromDictionary()->String{
    return "Address"
}

let sharath = Sharath()
println("State : \(sharath.name) and id \(sharath.id) with description : \(sharath.description())")

// Constructors...
class Person{
    // Stored Preoperties or instance variable that stores some data
    var name:String
    var id : Int
    // computed properties will calculate the values dnamically 
    var uniqueKey : String {
        get{
            return "\(name)-\(String(id))"
        }
        set{
            // split "newValue" into two parts and assign individually
            let keys = newValue.componentsSeparatedByString("-")
            self.name = keys[0]
            
        }
    }
    // readonly computed properties
    var primaryKey : String {
        return name+"-"+String(id)
    }
    // lazy property, property will not be initialized until it is used
    lazy var address = getAddressFromDictionary()
    // static values ror class properties
    static let object_version = "1.0.0" // stored constants and variables use can use static keyword
    static var revisions = 32
    // computed variables can use class or static keywords
    class var revisions_computed : Int{
        return revisions
    }
    
    // default constructor / no arg constructor
    init(){
       name = "Sharath, Bhaskara"
        id = 204925
    }
    
    //constructor with arguments
    init(name:String = "Sharath, Bhaskara", id:Int){
        self.name = name;
        self.id = id; // self is equivalent to this.
    }
    //deinit is something like finalize which cannot be called directly or in the control of runtime
    deinit {
        //resource clean up
    }
    // methods
    func description() -> String{
        return "Person \(name) and his id is \(id)"
    }
    //final methods cannot be overriden by the subclasses.. similarly final classes cannot be inherited
    final func info()->String{
        return "\(id)"
    }
}

var bhaskara = Person();
let sudha = Person(name: "Sudha Gopalakrishnan", id: 204639)
println(sudha.description())
// Inheritance
class TCSEmployee: Person{
    var designation : String
    // overriding and calling super constructors
    override init(){
        designation = "ASE"
        super.init()
    }
    
    func employerName()->String{
        return "TCS"
    }
   // override methods
    override func description() -> String {
        let original = super.description()
        return "\(original), designation is : \(designation)"
    }
    // static methods can use both class and static keywords as well
    class func employer()->String{
        return "TCS"
    }
}

var tcsEmployee = TCSEmployee()
tcsEmployee.description()

// Using Computed Value
tcsEmployee.uniqueKey
tcsEmployee.uniqueKey = "Peter, Bob-160087" // without set block will create an error
tcsEmployee.name

// Using Static values
Person.object_version
Person.revisions
Person.revisions_computed
TCSEmployee.employer()


class ObserverSample{
    static var revisions : Int = 0
    var name : String{
        willSet{
            println("About to change to \(name)")
        }
        didSet{
            ObserverSample.revisions += 1
            println("Name is changed \(ObserverSample.revisions) times")
        }
    }
    
    init(name:String){
        self.name = name
    }
}
var testObserver = ObserverSample(name:"Sharath Bhaskara")
testObserver.name
testObserver.name = "Sudha Gopalakrishnan"
ObserverSample.revisions
testObserver.name = "Sudha"
testObserver.name = "Sharath"
ObserverSample.revisions

// Access Levels 
// Private with in the same file
// Internal with in the same module or project - default
// Public will be accessible to all other module and projects as well

// Structures
// strcucture are value types and classes are reference type. when an object is passed to a function
// All the basic datatypes are structures in Swyft Ex: Int, String, Float, Double , Bool etc., 
// Struct cannot be inherited or deinitialized.
struct StructExample{
    var value:Int = 99
}
class ClassExample{
    var value:Int = 99
}
func changeValue(var myobj:StructExample)->Int{
    myobj.value += 1000;
    return myobj.value
}
func changeValue2(var myobj:ClassExample)->Int{
    myobj.value = myobj.value + 1000;
    return myobj.value
}

var example1 = ClassExample()
example1.value
changeValue2(example1) // pass-by-reference and value is changed
example1.value

var example2 = StructExample()
example2.value
changeValue(example2) // pass-by-value and value is not changed
example2.value

// Overflow operators &+, &-, &*, &/, &%

// Equality is == and Identity is === (checks references as well)

var email : String?
let defaultValue = "example@abc.com"
var address:String
if email != nil {
     address = email! // unwrapping is a must
}else{
    address = defaultValue
}

//Using coalescing operator
var addressCoalasced = email ?? defaultValue // 4 lines of above code is merged into one using ?? operator (unwrapping not reqd)

// "is" is similar to instanceof in java used for type checking
// "as" is used to do the type casting from parent to child objects or from super types to sub types

let myButton = UIButton()
let mySlider = UISlider()
let myDatePicker = UIDatePicker()

let controls = [myButton, mySlider, myDatePicker]

for item in controls {
    if item is UIDatePicker { // checking the type of the control using "is" keyword
        let picker = item as! UIDatePicker // Casting to subtype using "as" keyword
        picker.datePickerMode = UIDatePickerMode.CountDownTimer
    }
    // as can be used as is for upcasting, for downcasting it has to be explicity done using "as!" or "as?"
    let myPicker = item as? UIDatePicker
    if myPicker != nil {
        myPicker!.datePickerMode = UIDatePickerMode.CountDownTimer // unwrapping required here
    }
    // in the above example myPicker is optional, so need to be checked for nil., instead we can if-let branching
    if let myDatePicker = item as? UIDatePicker {
        myDatePicker.datePickerMode = UIDatePickerMode.CountDownTimer // unwrapping not needed
    }
    
}
//AnyObject and Any can be used to assign any kindo of objects to this
var anyObject : AnyObject
var any : Any

// anyObject = (1,"sharath") anyObject will not work with tuples
anyObject = tcsEmployee // only objects can be assigned no structs, tuples or anything
any = (1, "Sharath")
any = tcsEmployee
any = UIDatePicker()

// protocols are like interfaces in java, with just method declarations without definitions.
protocol Cleaner{
    //method
    func cleanFloors()
    func vaccum()
    func emptyTrash() -> Bool
    
    //properties
    var brokenBulbs : Bool {get set}
}



class OfficeCleaner : Cleaner{
    
    var brokenBulbs : Bool = true
    
    func cleanFloors() {
        println("Cleaning done")
    }
    func vaccum() {
        println("Vaccum done")
    }
    func emptyTrash() -> Bool {
        return true
    }
    
}

let myCleaner = OfficeCleaner()

// Extensions for extending functionality 
// extending String functionality to replace spaces with "_" from a string
extension String{
    func reverseWords() ->String{
        let wordsArray = self.componentsSeparatedByString(" ")
        let reversedArray = wordsArray.reverse()
        var newString = ""
        for eachWord in reversedArray {
            newString += eachWord + " "
        }
        return newString
    }
}
var message = "hi sharath how are you?"
message.reverseWords()

// Generics
let intData = [1,2,3,4,5]
let stringData = ["hi", "sharath", "how" , "are", "you"]

//generic function that can take any array and display contents
func displayArray<SomeType>(data : [SomeType]) {
    println("Printing the array : ")
    for eachItem in data {
        print(eachItem)
        print(":")
    }
    println()
}

displayArray(intData)
displayArray(stringData)


///////////////////////////////////////
///////////////////////////////////////

var helloWorld = "Sharath"
var age = 30
var isActive = true
isActive
println("\(isActive) , I am having fun at the age of \(age)")

"\(isActive), I am having"



let quantity = 18
var unitPrice = 23.45
println ("tocal cost \(Double(quantity) * unitPrice)")

if quantity > 10  && unitPrice < 10 {
    println ("quantity greater than 10 value is \(quantity)")
}else{
    println("quantity less than 10 value is \(quantity)")
}

func concat( firstname:String,  lastname:String) -> String{
    var fullName = "\(lastname), \(firstname)"
    return fullName;
}

println(concat("Sharath", "Bhaskara"));


var days = ["sun", "mon", "tue", "thu", "fri", "sat"]

for day in days {
    if day == "tue" {
        days.insert("wed", atIndex: 3)
    }
}

var states = ["AP":"Andhra Pradesh"]

states ["TG"] = "Telangana"

states ["TN"] = "Tamilnadu"
states ["MH"] = "Maharashtra"
states.updateValue("Bihar", forKey: "BH")
states.updateValue("Bhuvaneshwar", forKey: "BH")
println(states)


var firstname = "sharath"
var lastname = "bhaskara"
let myFirstTuple = (firstname, lastname, 32, "hi")
println(myFirstTuple)
firstname = "sudha"
lastname   = "gopalakrishnan"
println(myFirstTuple)



func userAge(id: Int=1) -> (name:String, age:Int){
    if id == 0 {
        let name = "Sharath, Bhaskara"
        let age = 32;
        return (name,age);
    }else{
        let name = "Sudha, Gopalakrishnan"
        let age = 33
        return (name,age)
    }
}

let result1 = userAge();
let result2 = userAge(id: 0)
println("\(result1.0) age is \(result1.1)")
println("\(result2.name) age is \(result2.age)")

let result3:(name:String,age:Int)
result3 = userAge(id: 2)
println("\(result3.name) age is \(result3.age)")

let (name4,age4) = userAge(id: 0)
println("\(name4) age is \(age4)")

var optionalValue : Int?
println("the value of optional is : \(optionalValue)")
if optionalValue != nil{
    println("the value of optional is : nil")
}else{
    println("the value of optional is : \(optionalValue)")
}


optionalValue = 10
println("the value of optional is : \(optionalValue)")
println("the value of optional is : \(optionalValue!)")

optionalValue = nil
if let value = optionalValue {
    println("value is \(value)")
}else{
    println("no data found")
}

enum SeatPreference{
    case Middle
    case Aisle
    case Window
    case NoPref
}

var seatPref1 : SeatPreference? = .Window

seatPref1 = SeatPreference.Aisle
println(seatPref1)
seatPref1 = .Middle
println(seatPref1)
