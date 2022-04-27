//
//  TeamMatchingView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//

import SwiftUI

struct TeamMatchingView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var userLatitude: String {
        return "\(locationManager.lastLocation?.coordinate.latitude ?? 0)"
    }
    
    var userLongitude: String {
        return "\(locationManager.lastLocation?.coordinate.longitude ?? 0)"
    }
    
    var body: some View {
        VStack {
            Text("location status: \(locationManager.statusString)")
            HStack {
                Text("latitude: \(userLatitude)")
                Text("longitude: \(userLongitude)")
            }
        }
        .onAppear()
                {
                    
                    print("\(locationManager.statusString)")
                }
    }
}

struct TeamMatchingView_Previews: PreviewProvider {
    static var previews: some View {
        TeamMatchingView()
    }
}
