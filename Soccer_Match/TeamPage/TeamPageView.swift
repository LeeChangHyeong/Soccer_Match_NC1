//
//  TeamPageView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//

import SwiftUI

struct TeamPageView: View {
    //    @Binding var teams: [Team]
    //    @State var isShowingSheet = false
    @State var teamINTRO: String = ""
    @State var teamNAME: String = ""
    @State var touch = false
    @State private var showingAlert = false
    @State var teamLOGO: Image?
    var body: some View {
        NavigationView{
            ZStack{
                //                Image("BackGround4")
                //                    .resizable()
                //                    .scaledToFill()
                //                    .ignoresSafeArea()
                //                    .preferredColorScheme(.dark)
                Rectangle()
                    .overlay(
                        Image("BackGround4")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                            .preferredColorScheme(.dark)
                    )
                
                VStack{
                    NavigationLink(destination: TeamDetail_Info(teamINTRO: $teamINTRO, teamNAME: $teamNAME, teamLOGO: $teamLOGO), label: {
                        VStack{
                            if touch {
    //                            MainButtonStyle(Title: teamNAME, SubTitle: "0W 0L")
                                HStack(){
                                    teamLOGO?
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 70, height: 70)
                                        .clipShape(Circle())
                                    
                                    VStack(alignment: .leading) {
                                        Text(teamNAME)
                                            .scaledFont(name: "GmarketSansTTFMedium", size: 25)
                                            // .lineLimit(number: 2)
                                        // 두줄까지 가능
                                            .padding(.horizontal)
                                            .padding(.bottom, 5)
                                        
                                        Text("0W 0D 0L")
                                            .scaledFont(name: "GmarketSansTTFMedium", size: 13)
                                            .padding(.horizontal)
                                    }
                                    
                                }.foregroundColor(.white)
                                    .padding()
                            //        .frame(width: 400, height: 100, alignment: .topLeading)
                                    .frame(maxWidth: .infinity,alignment: .topLeading)
                                    .background(.ultraThinMaterial)
                                    .cornerRadius(20)
                                    .padding()
                                    
                                
                                
                                
                                
                                
                                
                            }else{
                                NavigationLink(destination: CreateTeamView(touch: $touch, teamINTRO: $teamINTRO, teamNAME: $teamNAME, teamLOGO: $teamLOGO)) {
                                    MainButtonStyle(Title: "팀 생성하기", SubTitle: "팀을 생성하여 지역, 전국 랭킹에 도전해보세요 !!")
                                        .navigationBarTitleDisplayMode(.inline)
                                }
                            }
                            //                    MainButtonStyle(Title: "팀 생성하기", SubTitle: "팀을 생성하여 지역, 전국 랭킹에 도전해보세요 !!")
                            //                        .onTapGesture {
                            //                            isShowingSheet.toggle()
                            //                        }
                        }
                        
                    })
                   
                    
                    HStack{
                        if touch{
                            NavigationLink(destination: TeamManagementView(teamLOGO: $teamLOGO, teamNAME: $teamNAME), label: {
                                MainButtonStyle2(Title: "팀 관리", SubTitle: "person.3.sequence.fill")
                                
                            })
                            
                            NavigationLink(destination: TecticalBoard(), label: {
                                MainButtonStyle2(Title: "전술 보드", SubTitle: "pencil.and.outline")
                            })
                            
                        }else {
                            MainButtonStyle2(Title: "팀 관리", SubTitle: "person.3.sequence.fill").onTapGesture {
                                showingAlert = true
                            }.alert(isPresented: $showingAlert){
                                Alert(title: Text("팀을 먼저 생성해 주세요 !!"))
                            }
                            
                            MainButtonStyle2(Title: "전술 보드", SubTitle: "pencil.and.outline").onTapGesture {
                                showingAlert = true
                            }.alert(isPresented: $showingAlert){
                                Alert(title: Text("팀을 먼저 생성해 주세요 !!"))
                            }
                            
                        
                            
                       
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    
                    
                    HStack{
                        if touch{
                            NavigationLink(destination: EmptyView(), label: {
                                MainButtonStyle2(Title: "팀 전적", SubTitle: "note.text")
                                
                            })
                            NavigationLink(destination: EmptyView(), label: {
                                MainButtonStyle2(Title: "팀 랭킹", SubTitle: "crown.fill")
                                
                            })
                            
                        } else {
                            MainButtonStyle2(Title: "팀 전적", SubTitle: "note.text").onTapGesture {
                                showingAlert = true
                            }.alert(isPresented: $showingAlert){
                                Alert(title: Text("팀을 먼저 생성해 주세요 !!"))
                            }
                            MainButtonStyle2(Title: "팀 랭킹", SubTitle: "crown.fill").onTapGesture {
                                showingAlert = true
                            }.alert(isPresented: $showingAlert){
                                Alert(title: Text("팀을 먼저 생성해 주세요 !!"))
                            }
                            
                        }
                        
                     
                        
                    }
                    .padding(.horizontal, 20)
                }
                
            }
           
        }
        
    }
}

