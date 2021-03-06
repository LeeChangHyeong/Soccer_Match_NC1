//
//  MyPageView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                Rectangle()
                    .overlay(
                        Image("BackGround2")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                            .preferredColorScheme(.dark)
                    )
                
                
                    VStack{
                        NavigationLink(destination: EmptyView(), label: {
                            MainButtonStyle(Title: "개인 상세 전적", SubTitle: "내 경기 결과를 상세하게 !!")
                        })
                        
                        
                        HStack{
                            NavigationLink(destination: EmptyView(), label: {
                                MainButtonStyle2(Title: "방명록", SubTitle: "person.2.crop.square.stack.fill")
                            })
                            .navigationBarTitleDisplayMode(.inline)
                            
                            NavigationLink(destination: EmptyView(), label: {
                                MainButtonStyle2(Title: "친구 관리", SubTitle: "figure.stand.line.dotted.figure.stand")
                            })
                        }
                        .padding(.horizontal, 20)
                        
                        
                        
                        HStack{
                            NavigationLink(destination: EmptyView(), label: {
                                MainButtonStyle2(Title: "미니미 샵", SubTitle: "cart.fill")
                            })
                            
                            NavigationLink(destination: EmptyView(), label: {
                                MainButtonStyle2(Title: "미니미 관리", SubTitle: "tshirt.fill")
                            })
                            
                            
                        }
                        .padding(.horizontal, 20)
                        
                        
                    }
                    
                
            }
        } // .navigationViewStyle(.stack) 아이패드 아이폰처럼 쓰기
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}

