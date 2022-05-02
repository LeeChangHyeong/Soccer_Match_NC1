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
        VStack(alignment: .leading) {
            Text(Title)
                .scaledFont(name: "GmarketSansTTFMedium", size: 25)
                // .lineLimit(number: 2)
            // 두줄까지 가능
                .padding(.horizontal)
                .padding(.bottom, 0.1)
            
            Text(SubTitle)
                .scaledFont(name: "GmarketSansTTFMedium", size: 10)
                .padding(.horizontal)
        }
        .foregroundColor(.white)
        .padding()
//        .frame(width: 400, height: 100, alignment: .topLeading)
        .frame(maxWidth: .infinity,alignment: .topLeading)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .padding()
        
    
    }
    
}

struct MainButtonStyle2: View {
    var Title: String = ""
    var SubTitle: String = ""
    
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text(Title)
                .scaledFont(name: "GmarketSansTTFMedium", size: 25)
            
            Spacer()
            
            Image(systemName: SubTitle)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .bottomTrailing)
        }
        .foregroundColor(.white)
        .padding()
        //.frame(width: 200, height: 130, alignment: .topLeading)
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .frame(height: 130)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
      
     
        
        
        
    }
}

