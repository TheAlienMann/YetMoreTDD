import XCTest
@testable import StringCalculator

final class StringCalculatorTests: XCTestCase {
	var sut: StringCalculator!
	override func setUp() {
		super.setUp()
		sut = StringCalculator()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_StringCalculator_canBeInitialized() {
		XCTAssertNotNil(sut)
	}

	func test_addNumbers_returnsOneForOne() {
		XCTAssertEqual(sut.addNumber("1"), 1)
	}

	func test_addNumbers_returnsTwoForTwo() {
		XCTAssertEqual(sut.addNumber("2"), 2)
	}

	func test_shouldSlitInputBasedOnCommaSeparator() {
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}

	func test_shouldSlitInputBasedOnSpaceSeparator() {
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}

	func test_shouldSlitInputBasedOnHashSeparator() {
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}

	func test_shouldSlitInputBasedOnSemiColonSeparator() {
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}

	func test_shouldSlitInputBasedOnSeparator() {
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}

	func test_shouldSlitInputBasedOnNoSeparator() {
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}

	func test_shouldSlitInputBasedOnMultipleSeparators() {
		XCTAssertEqual(sut.splitInput("1,; 2"), ["1", "2"])
	}
}
