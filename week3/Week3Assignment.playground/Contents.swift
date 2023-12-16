import UIKit


// a) Create an array of Int called nums with values 0 through 20. Iterate over the Array and print the even numbers.
let nums: [Int] = Array(0...20)
for num in nums where num % 2 == 0 {
  print(num)
}

/* b) In your Playground, define the following String:
 let sentence = “The qUIck bRown fOx jumpEd over the lAzy doG”
 Iterate over sentence counting the vowels (a, e, i, o, u), ignoring the case.
*/
let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
let vowels = ["a", "e", "i", "o", "u"]
var vowel_count = 0
for character in sentence {
  if vowels.contains(character.lowercased()) {
    vowel_count += 1
  }
}
print(vowel_count)


/* c) Create two arrays of Int with the values of 0 through 4. Use a nested for loop to print a mini multiplication table. The output, which should be multiple lines, should be in the following format:
 0 * 0 = 0
 The format follows the number from the first array, space, followed by the character *, space,  followed by the number from the second array, space,  followed by =, space, followed by the result of the number from the first array multiplied by the number from the second array (just like the example above). There are a couple of ways to achieve this, but String Interpolation is the easiest.
*/
let first_array = Array(0...4)
let second_array = Array(0...4)
for outer in first_array {
  for inner in second_array {
    print("\(inner) * \(outer) = \(inner * outer)")
  }
}

/* d) Write a function called average that takes an optional array of Int. If the array is not nil, calculate the average of the array's values and print:
 “The average of the values in the array is <average>.”
 Where <average> is the calculated average. If the array is nil, print:
 “The array is nil. Calculating the average is impossible.”
 Note: the average is calculated by summing the values in the array and dividing by the number of elements.
 Call this function two times. First, pass in the nums array from part A and second by passing an optional array of Int.
*/
func average(_ intArray: [Int]?) {
  guard let intArray = intArray else {
      print("The array is nil. Calculating the average is impossible.")
      return
  }
  let average = Double(intArray.reduce(0, {(result, next) in result + next})) / Double(intArray.count)
  print("The average of the values in the array is \(average).")
}

average(nums)
let optArray: [Int]? = [1, 2, 3, 4]
average(optArray)

/* e) Create a struct called Person with the properties firstName, lastName, and age. Choose appropriate data types for the properties. Include a method on Person called details that prints the values stored in the properties in the following format:
  Name: <firstName> <lastName>, Age: <age>
 Create an instance of Person called person. Pass your first name, last name, and age for the properties. Finally, call the method details.
 */
struct Person {
  let firstName: String
  let lastName: String
  var age: Int
  
  func details() {
    print("Name: \(firstName) \(lastName), Age: \(age)")
  }
}

let person = Person(firstName: "Robert", lastName: "Pitchford", age: 51)
person.details()

/* f) Create a class called Student with two properties: person of type Person and grades, an array of Int. The class must have a method called calculateAverageGrade that takes no parameters and returns a Double. Include a method called details that prints the values of the properties stored in Student along with the average grade in the following format:
  Name: <firstName> <lastName>, Age: <age>, GPA: <average grade>.
 Create an instance of Student called student passing in your first name, last name, age, and an array of five numbers: 94, 99, 81, 100, 79. Next call the details method to output the details of the student.
 */
class Student {
  let person: Person
  let grades: [Int]
  
  init(firstName: String, lastName: String, age: Int, grades: [Int]) {
    self.person = Person(firstName: firstName, lastName: lastName, age: age)
    self.grades = grades
  }
  
  func calculateAverageGrade() -> Double {
    guard grades.count > 0 else {
      return 0.0
    }
    return Double(grades.reduce(0, {(result, next) in result + next})) / Double(grades.count)
  }
  
  func details() {
    print("Name: \(person.firstName) \(person.lastName), Age: \(person.age)", terminator: "")
    print(", GPA: \(self.calculateAverageGrade()).")
  }
}

let student = Student(firstName: "Robert", lastName: "Pitchford", age: 51, grades: [94, 99, 81, 100, 79])
student.details()


// Above & Beyond

struct Square {
  var side: Int
  func area() -> Int {
    return side * side
  }
}
class Rectangle {
  var length: Int
  var width: Int
  init(length: Int, width: Int) {
    self.length = length
    self.width = width
  }
  func area() -> Int {
    return length * width
  }
}
var square1 = Square(side: 4)
var square2 = square1
square2.side = 5
print("Area: square1 - \(square1.area()) square2 - \(square2.area())")
var rectangle1 = Rectangle(length: 4, width: 4)
var rectangle2 = rectangle1
rectangle2.length = 5
print("Area: rectangle1 - \(rectangle1.area()) rectangle2 - \(rectangle2.area())")
