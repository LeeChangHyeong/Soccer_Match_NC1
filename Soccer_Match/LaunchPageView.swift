//
//  LaunchPageView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/26.
//

import SwiftUI

struct LaunchPageView: View {
    var body: some View {
        VStack{
            Spacer()
            Image("Launch_Image")
                .resizable()
                .scaledToFill()
            //.aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 10, x: 10, y: 10)
                .overlay(
                    Circle().stroke(Color.black,
                                    lineWidth: 10))
            Spacer()
            Text("모여모여 풋살")
                .font(.custom("BM JUA_OTF", size: 50))
                .shadow(color: .gray, radius: 10, x: 5, y: 5)
            Spacer()
            
            //.clipped()
            //.edgesIgnoringSafeArea(.all)
        }
        // 폰트명 찾는 코드
        //        .onAppear{
        //                        for family: String in UIFont.familyNames
        //                        {
        //                            print(family)
        //                            for names: String in UIFont.fontNames(forFamilyName: family)
        //                            {
        //                                print("== \(names)")
        //                            }
        //                        }
        //                    }
        
    }
}

struct LaunchPageView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchPageView()
    }
}
