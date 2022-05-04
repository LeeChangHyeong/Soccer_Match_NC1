//
//  SwiftUIView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/05/04.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State private var dragOffset = CGSize.zero
    @State private var dragOffset2 = CGSize.zero
    
    var body: some View {
        Image(systemName: "person.fill")
            .offset(x: dragOffset.width , y:dragOffset.height )
            .gesture(DragGesture()
                .onChanged { gesture in
                    dragOffset = CGSize(width: gesture.translation.width + dragOffset2.width, height: gesture .translation.height + dragOffset2.height)
                    
                }
                .onEnded { gesture in
                    dragOffset = CGSize(width: gesture.translation.width + dragOffset2.width, height: gesture .translation.height + dragOffset2.height)
                    dragOffset2 = dragOffset
                })
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
