//
//  TeamDetail_Info.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/05/03.
//

import SwiftUI

struct TeamDetail_Info: View {
    @State private var touch = true
    @Binding var teamINTRO: String
    @Binding var teamNAME: String
    @Binding var teamLOGO: Image?
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

                teamLOGO?
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .padding(.top, 60)
                VStack{
                    Text("팀 이름\n")
                        .frame(maxWidth:.infinity, alignment: .bottomLeading)
                        .scaledFont(name: "GmarketSansTTFMedium", size: 25)
                        .padding(.horizontal)
                        
                    Text(teamNAME)
                        .frame(maxWidth:.infinity, alignment: .bottomLeading)
                        .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                        .padding(.horizontal)
                }
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .cornerRadius(20)
                .padding(.top)
                .padding(.horizontal)
                .padding(.bottom, 12)
                
                VStack{
                    Text("팀 소개\n")
                        .frame(maxWidth:.infinity, alignment: .bottomLeading)
                        .scaledFont(name: "GmarketSansTTFMedium", size: 25)
                        .padding(.horizontal)
                    Text(teamINTRO)
                        .frame(maxWidth:.infinity, alignment: .bottomLeading)
                        .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                        .padding(.horizontal)
                }
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .cornerRadius(20)
                .padding(.horizontal)
                
                Spacer()
                
                
            }
            
            
        }
    }
    
}
