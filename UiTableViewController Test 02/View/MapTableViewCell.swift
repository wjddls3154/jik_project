//
//  MapTableViewCell.swift
//  UiTableViewController Test 02
//
//  Created by amadeus on 2018. 6. 2..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit
import MapKit

class MapTableViewCell: UITableViewCell {

    @IBOutlet weak var detailMapView: MKMapView!
    
    func configure(location: String) {
    
        let geoCoder = CLGeocoder()
            geoCoder.geocodeAddressString(location, completionHandler: {
    
                (placemarks: [CLPlacemark]?, error: Error?) -> Void in
    
                if let error = error {
                    print(error)
                    return
                }
    
                if placemarks != nil {
                    let placemark = placemarks![0]
    
                    // Add annotation
                    let annotation = MKPointAnnotation()
                    //annotation.title = self.name
                    //annotation.subtitle = self.type
    
                    if let location = placemark.location {
                        annotation.coordinate = location.coordinate
                        self.detailMapView.addAnnotation(annotation)
                        
                        // Set zoom level
                        let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
                        self.detailMapView.setRegion(region, animated: true)
                    }
                }
    
            })
        
          // 후행 클로져
//        geoCoder.geocodeAddressString(local1) {
//
//            (placemarks: [CLPlacemark]?, error: Error?) -> Void in
//            if let error = error {
//                print(error)
//                return
//            }
//
//            if placemarks != nil {
//                let placemark = placemarks![0]
//
//                // Add annotation
//                let annotation = MKPointAnnotation()
//                annotation.title = self.name
//                annotation.subtitle = self.type
//
//                if let location = placemark.location {
//                    annotation.coordinate = location.coordinate
//                    self.detailMapView.addAnnotation(annotation)
//
//                    // Set zoom level
//                    let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 250, 250)
//                    self.detailMapView.setRegion(region, animated: true)
//                    //                    self.detailMapView.showAnnotations([annotation], animated: true)
//                }
//            }
//        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
