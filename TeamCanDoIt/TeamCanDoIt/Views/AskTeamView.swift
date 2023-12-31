//
//  AskTeamView.swift
//  TeamCanDoIt
//
//  Created by 김태성 on 12/31/23.
//

import SwiftUI

struct AskTeamView: View {
    var body: some View {
        Spacer()

        Group {
            HStack(spacing: 0) {
                Text("팀캔두잇")
                    .bold()
                    .foregroundStyle(Color.accentColor)
                Text("에서")
                    .bold()
                Spacer()
                    
            }
            
            HStack(spacing: 0) {
                Text("진행 중인 팀이 있나요?")
                    .bold()
                Spacer()
            }
        }
        .font(.system(size: 35))
        .foregroundStyle(.blackColor1)
        .padding(.leading)
        Spacer()
        
        HStack {
            Text("아니요. 제가 만들래요!")
            Spacer()
        }
        .foregroundStyle(.blackColor1)
        .padding(.leading, 20)
        .padding(.bottom , -15)
        
        Button(action: {
            
        }, label: {
            Image("makeTeamButton")
                .resizable()
                .scaledToFit()
                .padding()
                .padding(.bottom)
        })
        
        
        
        HStack {
            Text("네. 팀원이 만들었어요!")
            Spacer()
        }
        .foregroundStyle(.blackColor1)
        .padding(.leading, 20)
        .padding(.bottom , -15)
        
        Button(action: {
            
        }, label: {
            Image("linkButton")
                .resizable()
                .scaledToFit()
                .padding()
                .padding(.bottom)
        })
        
        Spacer()
        Spacer()
    }
}

#Preview {
    AskTeamView()
}
