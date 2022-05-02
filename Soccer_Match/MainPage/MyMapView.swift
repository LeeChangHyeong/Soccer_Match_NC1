//
//  ReservationView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//

import Foundation
import SwiftUI
import MapKit // 지도
import CoreLocation // 위치

struct MyMapView: UIViewRepresentable {
    
    let locationManager = CLLocationManager()
    
    func makeUIView(context: Context) -> MKMapView {
        
        let mKMapView = MKMapView()
        
        // 맵뷰 델리겟 연결
        mKMapView.delegate = context.coordinator
        
        
        // 위치 매니저 델리겟 연결
        self.locationManager.delegate = context.coordinator
        
        // 위치 정확도 설정
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // 위치 이용 허용 물어보기
        self.locationManager.requestWhenInUseAuthorization()
        
        // 현재 위치 업데이트 시작
        self.locationManager.startUpdatingLocation()
        
        mKMapView.showsUserLocation = true // 현재 사용자 위치 보여주기
        mKMapView.setUserTrackingMode(.follow, animated: true) // 따라오는지 여부
        
        let regionRadius: CLLocationDistance = 200 // 맵 카메라 반경
        
        // 보여줄 지역 설정
        let coordinateRegion = MKCoordinateRegion(center: mKMapView.userLocation.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        // 지도의 지역 설정
        mKMapView.setRegion(coordinateRegion, animated: true)
        return mKMapView
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        print("hihi")
        
    }
    
    func makeCoordinator() -> MyMapView.Coordinator {
        return MyMapView.Coordinator(self)
    }
    
    class Coordinator: NSObject {
        
        var myMapView: MyMapView // SwiftUI View
        
        init(_ myMapView: MyMapView){
            self.myMapView = myMapView
        }
        
        
        
       
        
    }
}


extension MyMapView.Coordinator: MKMapViewDelegate {
    
}

extension MyMapView.Coordinator: CLLocationManagerDelegate {
    // 위치가 변경되었을때
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lat = locations.first?.coordinate.latitude,
              let long = locations.first?.coordinate.longitude else{
            return
        }

    }
}
