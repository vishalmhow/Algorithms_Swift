import UIKit

// MARK: Program to check given string is Palindrome or not

func isPalindrome(word: String) -> Bool {
    let characters = Array(word)
    var currentIndex = 0

    while currentIndex < characters.count /  2 {
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
            return false
        }
        currentIndex += 1
    }
    return true
}

print("Ia NAMAN Palindrome = \(isPalindrome(word: "NAMAN"))")
print("Ia MOHIT Palindrome = \(isPalindrome(word: "MOHIT"))")
print("Ia Naman Palindrome = \(isPalindrome(word: "Naman"))")

// MARK: Check how many words are Palindrome in given String.

let senetence = "Naman, Santosh, NAMAN, MAM"
func getPalindromeFromSentence(sentence: String) {
    let wordsArr = sentence.components(separatedBy: ", ")
    wordsArr.forEach { (word) in
        if isPalindrome(word: word) {
            print("\(word) is the Palindrome")
        }
    }
}
getPalindromeFromSentence(sentence: senetence)
