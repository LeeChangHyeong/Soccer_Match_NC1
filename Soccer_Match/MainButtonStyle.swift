//
//  MainButtonStyle.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/26.
//

import SwiftUI

struct MainButtonStyle: View {
    var Title: String = ""
    var SubTitle: String = ""
    var body: some View {
        VStack {
            
            Button(action: {
                
            }, label: {
                VStack(alignment: .leading) {
                    Text(Title)
                    
                        .font(.custom("GmarketSansTTFMedium", size: 30))
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom, 0.1)
                    
                    Text(SubTitle)
                        .font(.custom("GmarketSansTTFMedium", size: 15))
                        .padding(.horizontal)
                    
                    
                    
                    
                }
                .foregroundColor(.white)
                .frame(width: 400, height: 100, alignment: .topLeading)
            }).background(.ultraThinMaterial)
                .cornerRadius(20)
            
        }
        
    }
}
