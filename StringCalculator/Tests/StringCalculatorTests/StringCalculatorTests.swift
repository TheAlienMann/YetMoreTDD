import XCTest
@testable import StringCalculator

final class StringCalculatorTests: XCTestCase {
	func test_StringCalculator_canBeInitialized() {
		let sut = StringCalculator()
		XCTAssertNotNil(sut)
	}

	func test_addNumbers_returnsOneForOne() {
		let sut = StringCalculator()
		XCTAssertEqual(sut.addNumber("1"), 1)
	}

	func test_addNumbers_returnsTwoForTwo() {
		let sut = StringCalculator()
		XCTAssertEqual(sut.addNumber("2"), 2)
	}

	func test_shouldSlitInputBasedOnCommaSeparator() {
		let sut = StringCalculator()
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}

	func test_shouldSlitInputBasedOnSpaceSeparator() {
		let sut = StringCalculator()
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}

	func test_shouldSlitInputBasedOnHashSeparator() {
		let sut = StringCalculator()
		XCTAssertEqual(sut.splitInput("1,2"), ["1", "2"])
	}
}
