import Flutter
import UIKit
import MapKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    weak var registrar = self.registrar(forPlugin: "pluginapp_qmap_pluginname")
    registrar?.register(MapKitViewFactory(), withId: "map_view")
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

class MapKitViewFactory: NSObject, FlutterPlatformViewFactory {
  func create(
    withFrame frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?
  ) -> FlutterPlatformView {
    return MapKitView()
  }
}

class MapKitView: NSObject, FlutterPlatformView {
  private var _view = MKMapView()
  
  func view() -> UIView {
    return _view
  }
}
