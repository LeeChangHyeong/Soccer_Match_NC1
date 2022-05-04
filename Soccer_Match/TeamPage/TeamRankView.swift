//
//  TeamRankView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/05/04.
//

import SwiftUI

struct TeamRankView: View {
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
                
                Text("전국 랭킹")
                    .scaledFont(name: "GmarketSansTTFMedium", size: 40)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding()
                
                
                ZStack{
                    Rectangle()
                        .opacity(0.8)
                        .cornerRadius(20)
                    HStack{
                        
                        VStack{
                            Text("순위")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 30)
                            Group{
                                
                                Text("1")
                                Text("2")
                                Text("3")
                                Text("4")
                                Text("5")
                                Text("6")
                                Text("7")
                                Text("8")
                                Text("9")
                            }
                            .padding(.vertical, 7).scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            Text("10")
                                .padding(.vertical, 7).scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            
                            Text(".\n.\n.\n")
                                .padding(.vertical, 7).scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            Text("9920")
                                .padding(.vertical, 7).scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            
                            
                        }
                        .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                        
                        Spacer()
                        
                        VStack{
                            Text("팀명")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 30)
                            Group{
                                
                                Text("다 댐비라")
                                Text("다 비키라")
                                Text("져주세요")
                                Text("휴먼 FC")
                                Text("너무 쉽다")
                                Text("울산사나이 FC")
                                Text("니가 뭔데")
                                Text("서울사람입니다")
                                Text("강원도 추워")
                            }
                            .padding(.vertical, 7)
                            .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            Text("반가워요")
                                .padding(.vertical, 7)
                                .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            Text(".\n.\n.\n")
                                .padding(.vertical, 7).scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            Text(teamNAME)
                                .padding(.vertical, 7)
                                .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                        }
                        .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                        
                        Spacer()
                        
                        VStack{
                            Text("전적")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 30)
                            Group{
                                
                                Text("34W 4D 11L")
                                Text("30W 6D 10L")
                                Text("30W 3D 14L")
                                Text("27W 3D 3L")
                                Text("22W 9D 10L")
                                Text("21W 6D 0L")
                                Text("21W 2D 18L")
                                Text("18W 4D 9L")
                                Text("18W 0D 5L")
                            }
                            .padding(.vertical, 7)
                            .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            Text("15W 3D 12L")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                                .padding(.vertical, 7)
                            Text(".\n.\n.\n")
                                .padding(.vertical, 7).scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            Text("0W 0D 0L")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                                .padding(.vertical, 7)
                        }
                        .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                        Spacer()
                        VStack{
                            Text("점수")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 30)
                            
                            Group{
                                
                                Text("106p")
                                Text("96p")
                                Text("93p")
                                Text("84p")
                                Text("75p")
                                Text("69p")
                                Text("65p")
                                Text("58p")
                                Text("54p")
                            }
                            .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            .padding(.vertical, 7)
                            Text("48p")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                                .padding(.vertical, 7)
                            Text(".\n.\n.\n")
                                .padding(.vertical, 7).scaledFont(name: "GmarketSansTTFMedium", size: 14)
                            Text("0p")
                                .scaledFont(name: "GmarketSansTTFMedium", size: 14)
                                .padding(.vertical, 7)
                        }
                        .scaledFont(name: "GmarketSansTTFMedium", size: 20)
                        
                        
                        
                    }.padding(.horizontal,20)
                        .foregroundColor(.black)
                    
                }
            }
            
        }
        
    }
}


