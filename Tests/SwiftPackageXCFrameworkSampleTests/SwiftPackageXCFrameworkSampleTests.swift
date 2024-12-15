import Testing
@testable import CxxLibSample

@Test func example() async throws {
    #expect(add(1, 2) == 3)
}
