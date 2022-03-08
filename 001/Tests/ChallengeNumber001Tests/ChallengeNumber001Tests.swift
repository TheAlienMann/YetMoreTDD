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
}
