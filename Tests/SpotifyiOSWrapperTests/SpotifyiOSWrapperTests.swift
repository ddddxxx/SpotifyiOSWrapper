import XCTest
@testable import SpotifyiOSWrapper

final class SpotifyiOSWrapperTests: XCTestCase {
    
    func testExample() {
        let configuration = SPTConfiguration(clientID: "", redirectURL: URL(string: "test.com")!)
        _ = SPTAppRemote(configuration: configuration, logLevel: .none)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
