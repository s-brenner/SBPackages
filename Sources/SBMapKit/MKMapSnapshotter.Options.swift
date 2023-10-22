#if canImport(MapKit) && os(iOS)
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGSize
import class  UIKit.UIScreen

extension MKMapSnapshotter.Options {
    
    public convenience init(
        coordinates: [CLLocationCoordinate2D],
        size: CGSize,
        scale: CGFloat = UIScreen.main.scale,
        mapType: MKMapType = .standard,
        showsBuildings: Bool = true,
        pointOfInterestFilter: MKPointOfInterestFilter? = nil) throws {
        
        self.init()
        
        // Region
        region = try MKCoordinateRegion(coordinates: coordinates)

        // Map data
        self.mapType = mapType
        self.showsBuildings = showsBuildings
        self.pointOfInterestFilter = pointOfInterestFilter
        
        // Image output
        self.size = size
        self.scale = scale
    }
}
#endif
