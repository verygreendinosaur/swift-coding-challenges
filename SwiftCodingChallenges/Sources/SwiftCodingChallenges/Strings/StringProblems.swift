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
  
}
