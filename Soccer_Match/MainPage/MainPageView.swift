//
//  MainPageView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/26.
//

import SwiftUI

struct MainPageView: View {
    var body: some View {
        ZStack{
            
            Image("BackGround")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
            VStack{
               MainButtonStyle(Title: "구장 예약하기", SubTitle: "가까운 지역 구장을 빠르고 쉽게 예매하세요!!")
                
                MainButtonStyle(Title: "구장별 매칭", SubTitle: "가까운 구장을 선택하여 매칭을 시작하세요!!")
                    .padding(.vertical, 50)
                MainButtonStyle(Title: "용병 구인/구직", SubTitle: "혼자라서 못한다고요? 팀 인원이 부족하다구요?")
                
                
                            }
            
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
