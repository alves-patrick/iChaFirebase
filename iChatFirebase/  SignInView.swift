//
//  ContentView.swift
//  iChatFirebase
//
//  Created by Patrick Alves on 13/08/23.
//

import SwiftUI

struct SignInView: View {
    
      @StateObject var viewModel = SignInViewModel()
    
    var body: some View {
        NavigationView  {
        VStack {
         Image("chat_logo")
                .resizable()
                .scaledToFit()
                .padding()
            
            TextField("Entre com seu e-mail", text : $viewModel.email)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(
                    RoundedRectangle(cornerRadius:24.0)
                .strokeBorder(Color(UIColor.separator), style: StrokeStyle(lineWidth: 1.0))
                    )
                .padding(.bottom, 20)
                
            
            SecureField("Entre co sua senha", text: $viewModel.password)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(
                    RoundedRectangle(cornerRadius:24.0)
                .strokeBorder(Color(UIColor.separator), style: StrokeStyle(lineWidth: 1.0))
                    )
                .padding(.bottom, 30)
            
            Button {
                viewModel.signIn()
            } label: {
                Text("Entrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("GreenColor"))
                    .foregroundColor(Color.white)
                    .cornerRadius(24.0)
            }
            
            Divider()
                .padding()
            
            NavigationLink (
                destination: SignUpView()) {
                    
                    Text("Não tenho uma conta? Clique aqui")
                        .foregroundColor(Color.black)
                }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 32)
        .background(Color.init(red: 240 / 255, green: 231 / 255, blue: 210 / 255))
        .navigationTitle("Login")
        .navigationBarHidden(true)
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
