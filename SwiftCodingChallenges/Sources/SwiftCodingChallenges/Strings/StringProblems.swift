//
//  StringProblems.swift
//  
//
//  Created by Christopher Poole on 11/14/20.
//

import Foundation

struct StringProblems {
  
  /// Challenge 1. Return true if text has only unique characters. Case sensitive.
  func areLettersUnique(in text: String) -> Bool {
    // Drop all characters in Set, an O(n) operation
    Set(text).count == text.count // Checking counts is an O(1) operation
  }
  
  /// Challenge 2. Return true if the string is a palindrome. Case insensitive.
  func isPalindrome(_ text: String) -> Bool {
    let text = text.lowercased()
    let reversed = String(text.reversed())
    return text == reversed
  }
  
  /// Challenge 3. Return true if the two strings have the same characters. Case sensitive.
  func haveSameCharacters(_ stringA: String, _ stringB: String) -> Bool {
    stringA.sorted() == stringB.sorted()
  }
  
  /// Challenge 5. Return the count of the provided character in the given string. Case sensitive.
  func countOf(char: Character, in text: String) -> Int {
    var count = 0
    for character in text {
      if character == char {
        count += 1
      }
    }
    
    return count
  }
  
  /// Challenge 8. Return true if one string is a rotation of the other. Case sensitive.
  func isRotation(text: String, rotated: String) -> Bool {
    guard text.count == rotated.count else { return false }
    return (text + text).contains(rotated)
  }
  
  /// Challenge 9. Return true if the text is an English pangram. Case insensitive.
  func isPangram(_ text: String) -> Bool {
    var characters = Set<String>()
    
    for char in text {
      if char.isLetter {
        characters.insert(char.lowercased())
      }
    }
    
    return characters.count == 26
  }
  
  /// Challenge 10. Return a count of vowels and consonants in the string.
  func vowelsAndConsonants(in text: String) -> (vowels: Int, consonants: Int) {
    let vowels: Set<Character> = ["a","e","i","o","u"]
    var vowelCount = 0
    var consonantCount = 0
    
    for char in text.lowercased() where char.isLetter {
      if vowels.contains(char) {
        vowelCount += 1
      } else {
        consonantCount += 1
      }
    }
    
    return (vowelCount, consonantCount)
  }
  
}
