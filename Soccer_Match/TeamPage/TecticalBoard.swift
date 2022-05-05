//
//  TecticalBoard.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/05/04.
//

import SwiftUI

struct TecticalBoard: View {
    @State private var dragOffset = CGSize.zero
    @State private var dragOffset2 = CGSize.zero
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
                Image("soccerField")
                    .resizable()
                    .scaledToFit()
                Spacer()
                HStack{
                    Drag_Drop()
                    Drag_Drop()
                    Drag_Drop()
                    Drag_Drop()
                    Drag_Drop()
                    Drag_Drop()
                    
//                    Image(systemName: "person.fill")
//                    Image(systemName: "person.fill")
//                        .offset(x: dragOffset.width , y:dragOffset.height )
//                        .gesture(DragGesture()
//                            .onChanged { gesture in
//                                dragOffset = CGSize(width: gesture.translation.width + dragOffset2.width, height: gesture .translation.height + dragOffset2.height)
//
//                            }
//                            .onEnded { gesture in
//                                dragOffset = CGSize(width: gesture.translation.width + dragOffset2.width, height: gesture .translation.height + dragOffset2.height)
//                                dragOffset2 = dragOffset
//                            })
//                    Image(systemName: "person.fill")
//                    Image(systemName: "person.fill")
//                    Image(systemName: "person.fill")
//                    Image(systemName: "person.fill")
                }
                .font(.largeTitle)
                .frame(maxWidth:.infinity)
                .padding()
                
                HStack{
                    Drag_Drop()
                    Drag_Drop()
                    Drag_Drop()
                    Drag_Drop()
                    Drag_Drop()
//                    Image(systemName: "person.fill")
//                    Image(systemName: "person.fill")
//                    Image(systemName: "person.fill")
//                    Image(systemName: "person.fill")
//                    Image(systemName: "person.fill")
                }
                .font(.largeTitle)
                .frame(maxWidth:.infinity)
                
                Spacer()
            }
        }
    }
}

struct TecticalBoard_Previews: PreviewProvider {
    static var previews: some View {
        TecticalBoard()
    }
}
