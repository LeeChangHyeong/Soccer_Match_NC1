//
//  CustomTabView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/26.
//

import SwiftUI

enum TabIndex {
    case home, team, my
}


struct CustomTabView: View {
    
    @State var tabIndex: TabIndex
    
    func changeMyView(tabIndex: TabIndex) -> MainPageView{
        switch tabIndex {
        case .home:
            return MainPageView()
        case .team:
            return LoginPageView()
        case .my:
            return LaunchPageView()
        }
        
    }
    
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                MainPageView()
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView(tabIndex: .home)
    }
}
