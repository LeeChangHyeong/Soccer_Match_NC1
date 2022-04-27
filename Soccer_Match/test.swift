//
//  test.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//
//
//  MainPageView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/26.
//

import SwiftUI

struct test: View {
    
    var body: some View {
        
        ZStack{
            Image("BackGround")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
            NavigationView {
                VStack {
                    //                MainButtonStyle3(title: "구장 예약하기", subTitle: "가까운 지역 구장을 빠르고 쉽게 예매하세요!!") {
                    //                    print("hi")
                    //                }
                    //
                    //                MainButtonStyle3(title: "구장별 매칭", subTitle: "가까운 구장을 선택하여 매칭을 시작하세요!!") {
                    //                    print("hi2")
                    //                }
                    //                .padding(.vertical, 50)
                    //                MainButtonStyle3(title: "용병 구인/구직", subTitle: "혼자라서 못한다고요? 팀 인원이 부족하다구요?") {
                    //                    print("hi3")
                    //                }
                    
                    NavigationLink(destination: Text("dddd")) {
                        MainButtonStyle3(title: "구장", subTitle: "콘푸로스트")
                    }
                    NavigationLink(destination: Text("dddd")) {
                        MainButtonStyle3(title: "구장", subTitle: "콘푸로스트")
                    }
                    NavigationLink(destination: Text("dddd")) {
                        MainButtonStyle3(title: "구장", subTitle: "콘푸로스트")
                    }
                    
                    
                    
                }
                
            }
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
