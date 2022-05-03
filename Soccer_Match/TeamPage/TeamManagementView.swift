//
//  TeamManagementView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/05/03.
//

import SwiftUI

struct TeamManagementView: View {
    @Binding var teamLOGO: Image?
    @Binding var teamNAME: String
    var body: some View {
        ZStack{
            Rectangle()
                .overlay(
                    Image("BackGround4")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .preferredColorScheme(.dark)
                )
            VStack{
                HStack{
                    teamLOGO?
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    Spacer()
                    Text(teamNAME)
                        .scaledFont(name: "GmarketSansTTFMedium", size: 35)
                    Spacer()
                }
                .padding(40)
                
                ZStack{
                    
                    Rectangle()
                        .opacity(0.8)
                        .cornerRadius(20)
                   
                
                    HStack{
                        VStack{
                            Text("포지션")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                                .padding(.vertical,7)
                            Text("ST")
                            Spacer()
                        }.foregroundColor(.black)
                        Spacer()
                        VStack{
                            Text("등번호")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                                .padding(.vertical,7)
                            Text("9")
                            Spacer()
                        }.foregroundColor(.black)
                        Spacer()
                        VStack{
                            Text("프로필")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                                .padding(.vertical,7)
                            Text("이창형")
                            Spacer()
                        }.foregroundColor(.black)
                        Spacer()
                        VStack{
                            Text("직책")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                                .padding(.vertical,7)
                            Text("주장")
                            Spacer()
                        }.foregroundColor(.black)
                    }.padding(.horizontal,40)
                    
                

                }
            }
        }
    }
}
    
