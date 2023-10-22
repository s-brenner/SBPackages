#if canImport(CoreLocation)
extension CLLocationCoordinate2D: Equatable {
    
    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        lhs.latitude == rhs.latitude &&
        lhs.longitude == rhs.longitude
    }
}

extension CLLocationCoordinate2D {
    
    public var location: CLLocation { CLLocation(coordinate: self) }
}
#endif
