import XCTest
@testable import SPM_Platform_Bug

final class SPM_Platform_BugTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SPM_Platform_Bug().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
