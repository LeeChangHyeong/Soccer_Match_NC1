//
//  SwiftUIView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/05/04.
//

import SwiftUI

struct Drag_Drop: View {
    
    @State private var dragOffset = CGSize.zero
    @State private var dragOffset2 = CGSize.zero
    
    var body: some View {
        Image(systemName: "person.fill")
            .font(.largeTitle)
        // 기준이 되는 주소에 더해지는 x,y 값
            .offset(x: dragOffset.width , y:dragOffset.height )
            .gesture(DragGesture()
                .onChanged { gesture in
                    dragOffset = CGSize(width: gesture.translation.width + dragOffset2.width, height: gesture .translation.height + dragOffset2.height)
                    
                }    //함수
                     //온체인지가 함수를 입력값으로 받는 메소드
                .onEnded { gesture in
                    dragOffset = CGSize(width: gesture.translation.width + dragOffset2.width, height: gesture .translation.height + dragOffset2.height)
                    dragOffset2 = dragOffset
                })
    }
}

struct Drag_Drop_Previews: PreviewProvider {
    static var previews: some View {
        Drag_Drop()
    }
}
