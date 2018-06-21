//
//  TotalMapViewController.swift
//  UiTableViewController Test 02
//
//  Created by amadeus on 2018. 6. 2..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit
import MapKit

class TotalMapViewController: UIViewController {

    @IBOutlet weak var totalMapView: MKMapView!
    var totalFoodStores: [FoodStore] = []
    var annotations = [MKPointAnnotation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewMap(items: totalFoodStores)
    }
    
    func  viewMap(items: [FoodStore]) {
        for item in items {
            let geoCoder = CLGeocoder()
            geoCoder.geocodeAddressString(item.address , completionHandler: {
                (placemarks: [CLPlacemark]?, error: Error?) -> Void in
                if let error = error {
                    print(error)
                    return
                }
        
                if placemarks != nil {
                    let placemark = placemarks![0]
                    print(placemarks![0])
                    
                    // pin point 을 저장
                    let annotation = MKPointAnnotation()

                    if let location = placemark.location {
                        // Add annotation
                        annotation.title = item.name
                        annotation.subtitle = item.type
                        annotation.coordinate = location.coordinate
                        self.annotations.append(annotation)
                        self.totalMapView.addAnnotations(self.annotations)
        
                        // Set zoom level
//                              let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 800, 800)
//                              self.totalMapView.setRegion(region, animated: true)
                    }
                }
                self.totalMapView.showAnnotations(self.annotations, animated: true)
            })
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
