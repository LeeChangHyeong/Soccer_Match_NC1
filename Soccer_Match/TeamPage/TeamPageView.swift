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
                VStack{
                    NavigationLink(destination: CreateTeamView()) {
                        MainButtonStyle(Title: "팀 생성하기", SubTitle: "팀을 생성하여 지역, 전국 랭킹에 도전해보세요 !!")
                            .navigationBarTitleDisplayMode(.inline)
                    }
//                    MainButtonStyle(Title: "팀 생성하기", SubTitle: "팀을 생성하여 지역, 전국 랭킹에 도전해보세요 !!")
//                        .onTapGesture {
//                            isShowingSheet.toggle()
//                        }
                }

                    HStack{
                        NavigationLink(destination: EmptyView(), label: {
                            MainButtonStyle2(Title: "팀 관리", SubTitle: "person.3.sequence.fill")

                        })

                        NavigationLink(destination: EmptyView(), label: {
                            MainButtonStyle2(Title: "전술 보드", SubTitle: "pencil.and.outline")
                        })
                    }
                    .padding(.horizontal, 20)


                    HStack{

                        NavigationLink(destination: EmptyView(), label: {
                            MainButtonStyle2(Title: "팀 전적", SubTitle: "note.text")

                        })
                        NavigationLink(destination: EmptyView(), label: {
                            MainButtonStyle2(Title: "팀 랭킹", SubTitle: "crown.fill")

                        })

                    }
                    .padding(.horizontal, 20)
                }

            }
        }

    }
}

