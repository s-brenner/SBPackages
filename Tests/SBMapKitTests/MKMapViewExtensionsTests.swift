#if !os(watchOS)
import XCTest
@testable import SBMapKit

final class MKMapViewTests: XCTestCase {
    
    func testRegister() {
        let mapView = MKMapView()
        mapView.register(annotationViewWithClass: MKPinAnnotationView.self)
        let annotationView = mapView.dequeueReusableAnnotationView(withClass: MKPinAnnotationView.self)
        XCTAssertNotNil(annotationView)
    }
    
    func testRegisterAndDequeue() {
        let mapView = MKMapView()
        let annotation = MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: 0, longitude: 0))
        mapView.register(annotationViewWithClass: MKPinAnnotationView.self)
        let annotationViewWithAnnotation = mapView.dequeueReusableAnnotationView(withClass: MKPinAnnotationView.self, for: annotation)
        XCTAssertNotNil(annotationViewWithAnnotation)
    }
}
#endif
