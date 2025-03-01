import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.




// Your code here

let numbers: Set<Int> = [1,1,2,4,4,4,6,6,7,8]
let numbersWithNoDuplicates = numbers.sorted()
print(numbersWithNoDuplicates)

//assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")




// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

// Your code here

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]
var scoresThatAppearOnce = [Int]()
var scoreCounts = [Int:Int]()
 var x = 0
 for score in scores.sorted() {
     scoreCounts[score] = (scoreCounts[score] ?? 0) + 1
 }
 for (key,value) in scoreCounts {
     if value == 1 {
         scoresThatAppearOnce.append(key)
     }
 }
 scoresThatAppearOnce = scoresThatAppearOnce.sorted()
 assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")
    

//assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

// Your code here

let arrOne: Set<Int> = [1,2,3,4,5]
let arrTwo: Set<Int> = [3,4,5,6,7]

var arrThree: Set<Int> = []
arrThree = arrOne.union(arrTwo)
print(arrThree.sorted())

//assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

// Your code here


let arrFour: Set<Int> = [1,2,3,4,5]
let arrFive: Set<Int> = [3,4,5,6,7]
var arrSix: Set<Int> = []
arrSix = arrFour.intersection(arrFive)
print(arrSix.sorted())


//assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne: Set<Int>  = [2, 4, 5, 6, 8, 10, 12]
let numsTwo: Set<Int>  = [1, 2, 3, 4, 5, 6]
let numsThree: Set<Int>  = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour: Set<Int>  = [1, 3, 4, 5, 6, 7, 9]
var allNumsWithNoDuplicates: Set<Int> = []
var numsOneAndTwo = numsOne.union(numsTwo)
var numsThreeAndFour = numsThree.union(numsFour)
allNumsWithNoDuplicates = numsOneAndTwo.union(numsThreeAndFour)
print(allNumsWithNoDuplicates.sorted())

// Your code here

//assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

// Your code here

//assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
//assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
//assert(strThreeIsPangram == true, "Was expecting false, but got \(strThreeIsPangram)")









