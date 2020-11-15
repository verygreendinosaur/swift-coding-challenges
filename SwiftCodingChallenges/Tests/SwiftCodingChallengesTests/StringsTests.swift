//
//  StringsTests.swift
//  SwiftCodingChallengesTests
//
//  Created by Christopher Poole on 11/14/20.
//

import XCTest
@testable import SwiftCodingChallenges

final class StringsTests: XCTestCase {
  
  func test_challenge001_areLettersUnique() {
    
    // When no duplicates
    XCTAssertTrue(StringProblems().areLettersUnique(in: ""))
    XCTAssertTrue(StringProblems().areLettersUnique(in: "abc"))
    XCTAssertTrue(StringProblems().areLettersUnique(in: "cba"))
    XCTAssertTrue(StringProblems().areLettersUnique(in: "No duplicates"))
    XCTAssertTrue(StringProblems().areLettersUnique(in: "CaseS"))
    
    // When duplicates
    XCTAssertFalse(StringProblems().areLettersUnique(in: "abb"))
    XCTAssertFalse(StringProblems().areLettersUnique(in: "abb"))
    XCTAssertFalse(StringProblems().areLettersUnique(in: "Cases"))
  }
  
  func test_challenge002_isPalindrome() {
    
    // When no duplicates
    XCTAssertTrue(StringProblems().isPalindrome(""))
    XCTAssertTrue(StringProblems().isPalindrome("abba"))
    XCTAssertTrue(StringProblems().isPalindrome("tacocat"))
    XCTAssertTrue(StringProblems().isPalindrome("rotator"))
    
    // When duplicates
    XCTAssertFalse(StringProblems().isPalindrome("abb a"))
    XCTAssertFalse(StringProblems().isPalindrome("taco cat"))
  }
  
  func test_challenge003_haveSameChars() {
    
  }
  
}
