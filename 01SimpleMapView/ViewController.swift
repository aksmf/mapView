//
//  ViewController.swift
//  01SimpleMapView
//
//  Created by D7703_11 on 2019. 9. 17..
//  Copyright © 2019년 D7703_11. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapView.mapType = MKMapType.hybrid
        
        //1) 지도의 중심점 (위도, 경도)지정
        //미래관 35.164873, 129.071415
        let center = CLLocationCoordinate2D(latitude: 35.164873, longitude: 129.071415)
        
        //2)지도 반경 지정
        let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        
        //3) 지도의 보여주는 영역인 region 만들기
        //let region = MKCoordinateRegion(center: center, span: span)
        
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 300, longitudinalMeters: 300)
        
        //4) MapView에 설정하기
        mapView.setRegion(region, animated: true)
        
        //5) center에 pin 꼽기
        let anno01 = MKPointAnnotation()
        anno01.coordinate = center
        anno01.title = "DIT 동의과학대학교"
        anno01.subtitle = "나의 꿈이 자라는 곳"
        //mapView.addAnnotation(anno01)
        //annoArray.append(anno01)
        
        //송상현 광장 35.164419, 129.064962
        let anno02 = MKPointAnnotation()
        anno02.coordinate.latitude = 35.164419
        anno02.coordinate.longitude = 129.064962
        anno02.title = "송상현 광장"
        anno02.subtitle = "푸른 잔디밭이 좋은곳"
        //mapView.addAnnotation(anno02)
        //annoArray.append(anno02)
        
        //번개반점 35.167783, 129.070598
        let anno03 = MKPointAnnotation()
        anno03.coordinate.latitude = 35.167783
        anno03.coordinate.longitude = 129.070598
        anno03.title = "번개반점"
        anno03.subtitle = "짜장면이 맛있는 집"
        //mapView.addAnnotation(anno03)
        //annoArray.append(anno03)
        
        mapView.showAnnotations([anno01, anno02, anno03], animated: true)
      
    
    }
    
    @IBAction func standardMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.standard
    }
    
    @IBAction func satelliteMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.satellite
    }
    
    @IBAction func hybridMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.hybrid
    }
}


