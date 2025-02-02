//  Copyright © 2021 Yurii Lysytsia. All rights reserved.

import XCTest
import MapKit
@testable import AirMapKit

final class MKMapViewTests: XCTestCase {
    
    // MARK: - Properties
    
    private var mapView: MKMapView!
    
    // MARK: - Lifecycle
    
    override func setUp() {
        mapView = MKMapView()
        mapView.frame.size = CGSize(500)
    }
    
    // MARK: - Tests
    
    func testReusableAnnotationView() {
        mapView.register(viewClass: SomeAnnotationView.self)
        
        let view: SomeAnnotationView = mapView.dequeueReusableAnnotationView()
        XCTAssertNotNil(view)
        
        let annotationView: SomeAnnotationView = mapView.dequeueReusableAnnotationView(for: SomeAnnotation())
        XCTAssertNotNil(annotationView)
    }
    
    func testZoom() {
        // Zoom to multiple coordinates and use span.
        mapView.zoom(to: [
            CLLocationCoordinate2D(latitude: 49.94036241979892, longitude: 24.08976609985509),
            CLLocationCoordinate2D(latitude: 50.23837916855012, longitude: 36.21315836339905)
        ], span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1), animated: false)
        XCTAssertEqual(mapView.region.center.latitude, 50.08960244485897, accuracy: 0.0000000001)
        XCTAssertEqual(mapView.region.center.longitude, 30.151462231627164, accuracy: 0.0000000001)
        
        // Zoom to multiple coordinates without span.
        mapView.zoom(to: [
            CLLocationCoordinate2D(latitude: 49.94036241979892, longitude: 24.08976609985509),
            CLLocationCoordinate2D(latitude: 50.23837916855012, longitude: 36.21315836339905)
        ], animated: false)
        XCTAssertEqual(mapView.region.center.latitude, 50.08960244485897, accuracy: 0.0000000001)
        XCTAssertEqual(mapView.region.center.longitude, 30.151462231627164, accuracy: 0.0000000001)
        
        // Zoom to one coordinates and use span.
        mapView.zoom(to: [
            CLLocationCoordinate2D(latitude: 49.94036241979892, longitude: 24.08976609985509)
        ], span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1), animated: false)
        XCTAssertEqual(mapView.region.center.latitude, 49.94036241979887, accuracy: 0.0000000001)
        XCTAssertEqual(mapView.region.center.longitude, 24.089766099855098, accuracy: 0.0000000001)
        
        // Zoom to one coordinates without span.
        mapView.zoom(to: [
            CLLocationCoordinate2D(latitude: 49.94036241979892, longitude: 24.08976609985509)
        ], animated: false)
        XCTAssertEqual(mapView.region.center.latitude, 49.94036241979887, accuracy: 0.0000000001)
        XCTAssertEqual(mapView.region.center.longitude, 24.089766099855098, accuracy: 0.0000000001)
        
        // Zoom to empty coordinates
        let previousRegion = mapView.region
        mapView.zoom(to: [], animated: false)
        XCTAssertEqual(mapView.region.center.latitude, previousRegion.center.latitude, accuracy: 0.0000000001)
        XCTAssertEqual(mapView.region.center.longitude, previousRegion.center.longitude, accuracy: 0.0000000001)
    }

}

private final class SomeAnnotationView: MKAnnotationView, ReusableView {
    
}

final class SomeAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: 49.94036241979892, longitude: 24.08976609985509)
    }
}
