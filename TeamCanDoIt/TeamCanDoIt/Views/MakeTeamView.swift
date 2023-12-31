//
//  MakeTeamView.swift
//  TeamCanDoIt
//
//  Created by 김태성 on 12/31/23.
//

import SwiftUI

struct MakeTeamView: View {
    
    @State var lectureName: String = ""
    
    var body: some View {
        Group {
            HStack(spacing: 0) {
                Text("팀 정보")
                    .bold()
                    .foregroundStyle(Color.accentColor)
                Text("를")
                    .bold()
                Spacer()
                
            }
            
            HStack(spacing: 0) {
                Text("간단하게 적어보세요!")
                    .bold()
                Spacer()
            }
        }
        .font(.system(size: 25))
        .foregroundStyle(.blackColor1)
        .padding(.leading)
        
        Spacer()
        
        TextField("강의 이름 입력", text: $lectureName)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
        
        TextField("팀 이름 입력", text: $lectureName)
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
        
        Spacer()
    }
}

#Preview {
    MakeTeamView()
}
