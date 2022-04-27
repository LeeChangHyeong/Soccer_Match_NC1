//
//  LoginPageView.swift
//  Soccer_Match
//
//  Created by 이창형 on 2022/04/26.
//

import SwiftUI

struct LoginPageView: View {
    
    @State private var ID: String = ""
    @State private var Password: String = ""
    @State private var Login = false
    
    var body: some View {
        VStack(spacing: 10){
            Spacer()
            Image("Logo")
                .resizable()
                .scaledToFill()
                .frame(width: 200 , height: 200)
            Text("모여모여 풋살")
                .font(.custom("BM JUA_OTF", size:30))
                .padding(.top, 50)
                .padding(.bottom, 50)
            
            HStack{
                TextField("ID", text: $ID)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    self.ID = ""
                }){
                    if self.ID.count > 0{
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 22))
                        
                    }
                    
                }
            }.padding(.horizontal, 40)
            
            HStack{
                SecureField("Password", text: $Password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.Password = ""
                }){
                    if self.Password.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 22))
                        
                    }
                    
                }
            }.padding(.horizontal, 40)
            
            Button(action: {
                Login.toggle()
            }, label: {
                Text("로그인")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .padding(10)
                    .background(.black)
                    .cornerRadius(20)
            })
            .fullScreenCover(isPresented: $Login){
                MyTabView()
            }
                
                Button(action: {
                    
                }, label: {
                    Text("아이디/비밀번호를 잊으셨나요?")
                })
                
                Button(action: {
                    
                }, label: {
                    Text("모여모여 풋살이 처음이신가요?")
                })
                Spacer()
            }
            
            
        }
    }


struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}

