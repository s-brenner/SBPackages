import XCTest
@testable import SBCoreLocation

final class CLLocationCoordinate2DExtensionsTests: XCTestCase {
    
    let coordinate1 = CLLocationCoordinate2D(latitude: 10, longitude: 10)
    
    func testEquatable() {
        let coordinate2 = CLLocationCoordinate2D(latitude: 10.00, longitude: 10.0)
        let coordinate3 = CLLocationCoordinate2D(latitude: -40, longitude: -50)
        XCTAssert(coordinate1 == coordinate2)
        XCTAssert(coordinate1 != coordinate3)
    }
    
    func testLocation() {
        XCTAssertEqual(
            coordinate1.location.coordinate,
            CLLocation(latitude: coordinate1.latitude, longitude: coordinate1.longitude).coordinate
        )
    }
}
