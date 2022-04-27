//
//  CreateTeamView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/27.
//

import SwiftUI

struct CreateTeamView: View {
    var body: some View {
        ZStack{
            
            Image("BackGround4")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .preferredColorScheme(.dark)
        }
    }
}

struct CreateTeamView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTeamView()
    }
}
