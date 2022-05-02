//
//  MyTabView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//

import SwiftUI


struct MyTabView: View {
//    @State var teams = [Team]()
    
    init() {
    UITabBar.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
        
        TabView(){
            
            MainPageView()
                .tabItem{
                    Image(systemName: "antenna.radiowaves.left.and.right")
                    Text("매칭페이지")
                }.tag(0).onAppear()
            {
                print("Appear")
            }
                
            
            MyPageView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("마이페이지")
                }.tag(1)
            
            TeamPageView()
                .tabItem{
                    Image(systemName: "person.3.fill")
                    Text("팀페이지")
                }.tag(2)
        }
        .onAppear {
                    if #available(iOS 15.0, *) {
                        let appearance = UITabBarAppearance()
                        UITabBar.appearance().scrollEdgeAppearance = appearance
                    }
                }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}

