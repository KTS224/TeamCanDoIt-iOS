//
//  LoginView.swift
//  TeamCanDoIt
//
//  Created by 김태성 on 12/16/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.accentColor, Color.accentColorgd]),
                               startPoint: .leading, endPoint: .trailing).ignoresSafeArea()
                Image("loginFaceImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 50)
                
                VStack {
                    HStack {
                        Text("걱정마 \n**불장이**🔥가 도와줄게!")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.top, 80)
                    
                    Spacer()
                    
                    Text("쉽고 빠르게 도움 당하기!")
                        .font(.system(size: 14))
                        .bold()
                        .overlay {
                            Image(systemName: "chevron.down")
                                .offset(y: 20)
                        }
                        .padding(30)
                        .foregroundColor(.white)
                        .animation(
                            .easeInOut(duration: 1)
                                .repeatCount(3, autoreverses: true),
                            value: 1.0
                        )
                    
//                    Button(action: {
//                        print("카카오 로그인")
//                    }, label: {
//                        Image("kakaoLoginImage")
//                    })
//                    
                    NavigationLink {
                        WelcomeView().navigationBarBackButtonHidden(true)
                    } label: {
                        Image("kakaoLoginImage")
                    }

                }
                .padding()
            }
        }
    }
}

#Preview {
    LoginView()
}
