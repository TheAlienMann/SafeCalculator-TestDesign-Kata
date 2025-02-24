import XCTest
@testable import SafeCalculator

final class SafeCalculatorTests: XCTestCase {
    func test_returnsTrue() {
        XCTAssertTrue(true)
    }

    func test_shouldFail() {}

    // MARK: - Helpers

    private func makeSUT() -> SafeCalculator {
        let sut = SafeCalculator(authorizer: SafeCalculatorStub())
        return sut
    }
}

private class SafeCalculatorStub: Authorizer {
    func authorize() -> Bool {
        true
    }
}
