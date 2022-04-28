//
//  Font.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/28.
//

import SwiftUI

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var name: String
    var size: CGFloat

    func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        // UIkit 폰트 크기 받아서 화면 크기에 맞게 해줌 - UIFontMetrics
        return content.font(.custom(name, size: scaledSize))
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {
    func scaledFont(name: String, size: CGFloat) -> some View {
        return self.modifier(ScaledFont(name: name, size: size))
    }
}


//
