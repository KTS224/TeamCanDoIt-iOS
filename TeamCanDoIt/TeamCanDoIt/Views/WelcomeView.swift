//
//  WelcomeView.swift
//  TeamCanDoIt
//
//  Created by 김태성 on 12/16/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            
            
            Group {
                HStack(spacing: 0) {
                    Text("대학생")
                        .bold()
                    Text(" 만을 위한")
                        .foregroundStyle(.blackColor4)
                }
                .overlay {
                    Image("checkImage")
                        .offset(y: -120)
                    Text("환영합니다!")
                        .foregroundStyle(.accent)
                        .offset(y: -80)
                        .font(.system(size: 19))
                        .fontWeight(.light)
                }
                
                
                HStack(spacing: 0) {
                    Text("팀플 서포트")
                        .bold()
                    Text(" 어플")
                        .foregroundStyle(.blackColor4)
                }
                
                HStack(spacing: 0) {
                    Text("팀캔두잇!")
                        .bold()
                        .foregroundStyle(Color.accentColor)
                    Text("이예요!")
                        .foregroundStyle(.blackColor4)
                }
            }
            .font(.system(size: 35))
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("시작하기")
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: UIScreen.main.bounds.width - 50)
                    .background(LinearGradient(gradient: Gradient(colors: [.accentColor, .accentColorgd]), startPoint: .leading, endPoint: .trailing))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
    }
}

#Preview {
    WelcomeView()
}
