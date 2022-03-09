import XCTest
@testable import ChallengeNumber001

final class ChallengeNumber001Tests: XCTestCase {
	var sut: ChallengeNumber001!

	override func setUp() {
		super.setUp()
		sut = ChallengeNumber001()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_text_initialValue() {
		XCTAssertEqual(sut.text, "Hello, World!")
	}

	func test_wordSearch_listOfWordsIsEmpty_shouldReturnAnEmptyArray() {
		XCTAssertEqual(sut.wordSearch("str", []), [])
	}

	func test_wordSearch_givenPatternIsEmpty_shouldReturnAnArrayContainingAStringASEmpty() {
		XCTAssertEqual(sut.wordSearch("", ["some string"]), ["Empty"])
	}

	func test_wordSearch_givenPattern_shouldReturnAnArrayOfMatches() {
		XCTAssertEqual(sut.wordSearch("ab", ["ab", "abc", "cde"]), ["ab", "abc"])
	}
}
