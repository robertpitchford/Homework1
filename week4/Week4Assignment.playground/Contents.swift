import Cocoa

//a) In the assignment for Module 3, part D asked you to write a function that would compute the average of an array of Int. Using that function and the array created in part A, create two overloaded functions of the function average.
func average(_ intArray: [Int]?) {
  guard let intArray = intArray else {
      print("The array is nil. Calculating the average is impossible.")
      return
  }
  average(intArray)
}

func average(_ ints: Int...) {
  average(ints)
}

func average(_ intArray: [Int]) {
  let average = Double(intArray.reduce(0, +)) / Double(intArray.count)
  print("The average of the values in the array is \(average).")
}

let numArray: [Int] = Array(0...20)
let maybeNums: [Int]? = Array(0...20)

average(numArray) // calls third function
average(0, 1, 2, 3, 4, 5) // calls second function
average(maybeNums) // calls first function

//b) Create an enum called Animal that has at least five animals. Next, make a function called theSoundMadeBy that has a parameter of type Animal. This function should output the sound that the animal makes. For example, if the Animal pass is a cow, the function should output, “A cow goes moooo.” Hint: Do not use if statements to complete this section.
//Call the function twice, sending a different Animal each time.

enum Animal: String {
  case cat, dog, sheep, cow, snake
}
 
func theSoundMadeBy(_ animal: Animal) {
  let sound = switch animal {
    case .cat:
      "meow"
    case .dog:
      "woof"
    case .sheep:
      "baa"
    case .cow:
      "moooo"
    case .snake:
      "hisssss"
  }
  print("A \(animal.rawValue) goes \(sound)")
}

theSoundMadeBy(.cat)
theSoundMadeBy(.snake)

//c) This question will have you creating multiple functions that will require you to use closures and collections. First, you will do some setup.
//Create an array of Int called nums with the values of 0 to 100.
//Create an array of Int? called numsWithNil with the following values:
//79, nil, 80, nil, 90, nil, 100, 72
//Create an array of Int called numsBy2 with values starting at 2 through 100, by 2.
//Create an array of Int called numsBy4 with values starting at 2 through 100, by 4.
//You can set the values of the arrays above using whatever method you find the easiest. In previous modules, you were introduced to ranges and sequences in Swift. Leveraging those in the Array initializer will allow you to create the requested arrays in a single line. Don’t let the last two break your stride
//.
//- Create a function called evenNumbersArray that takes a parameter of [Int] (array of Int) and returns [Int]. The array of Int returned should contain all the even numbers in the array passed. Call the function passing the nums array and print the output.
//- Create a function called sumOfArray that takes a parameter of [Int?] and returns an Int. The function should return the sum of the array values passed that are not nil. Call the function passing the numsWithNil array, and print out the results.
//- Create a function called commonElementsSet that takes two parameters of [Int] and returns a Set<Int> (set of Int.) The function will return a Set<Int> of the values in both arrays.
//Call the function commonElementsSet passing the arrays numsBy2, numsBy4, and print out the results.

let nums = Array(0...100)
let numsWithNil: [Int?] = [79, nil, 80, nil, 90, nil, 100, 72]
let numsBy2 = Array(stride(from: 2, through: 100, by: 2))
let numsBy4 = Array(stride(from: 2, through: 100, by: 4))

func evenNumbersArray(_ array: [Int]) -> [Int] {
  array.filter { $0 % 2 == 0 }
}

print("evenNumbersArray = \(evenNumbersArray(nums))")

func sumOfArray(_ array: [Int?]) -> Int {
  array.compactMap { $0 }.reduce(0, +)
}

print("sumOfArray = \(sumOfArray(numsWithNil))")

func commonElementsSet(_ lhs: [Int], _ rhs: [Int]) -> Set<Int> {
  Set(lhs).intersection(Set(rhs))
}

print("commonElementsSet = \(commonElementsSet(numsBy2, numsBy4).sorted())")

//d) Create a struct called Square that has a stored property called sideLength and a computed property called area. Create an instance of Square and print out the area.
//
struct Square {
  let sideLength: Double
  var area: Double { sideLength * sideLength }
}

let square = Square(sideLength: 5)
print("Area of a square with side length: \(square.sideLength) is: \(square.area)")



// Above & Beyond
// ==============

//Create a protocol called Shape with a calculateArea() -> Double method. Create two structs called Circle and Rectangle that conform to the protocol Shape. Both Circle and Rectangle should have appropriate stored properties for calculating the area.
protocol Shape {
  func calculateArea() -> Double
}

struct Circle: Shape {
  let radius: Double

  func calculateArea() -> Double {
    Double.pi * pow(radius, 2)
  }
}

struct Rectangle: Shape {
  let width: Double
  let height: Double
  
  func calculateArea() -> Double {
    width * height
  }
}

//Create instances of Circle and Rectangle and print out the area for each.
let circle = Circle(radius: 3)
let rectangle = Rectangle(width: 2, height: 5)

print("The area of a Circle with radius: \(circle.radius) is: \(circle.calculateArea())")
print("The area of a Rectangle with a width: \(rectangle.width) and a height: \(rectangle.height) is: \(rectangle.calculateArea())")

//Next, extend the protocol Shape to add a new method called calculateVolume() -> Double.
extension Shape {
  func calculateVolume() -> Double {
    0
  }
}

//Finally, create a struct called Sphere that conforms to Shape. Sphere should have appropriate stored properties for calculating area and volume.
struct Sphere: Shape {
  let radius: Double
  
  func calculateArea() -> Double {
    4 * Double.pi * pow(radius, 2)
  }
  func calculateVolume() -> Double {
    4 * Double.pi * pow(radius, 3) / 3
  }
}
//Create an instance of Sphere and print out the area and volume.
let sphere = Sphere(radius: 5)

print("The surface area of a Sphere with radius: \(sphere.radius) is: \(sphere.calculateArea())")
print("The volume of a Sphere with radius: \(sphere.radius) is: \(sphere.calculateVolume())")

