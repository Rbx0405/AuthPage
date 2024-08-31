//
//  LoginView.swift
//  AuthLogin
//
//  Created by Rishit Butola on 23/08/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email:String=""
    @State private var password:String=""
    
    private func isValidPassword(_ password:String)-> Bool{
        //min 6 characters
        //min 1 uppercase
        //min 1 special character
        
        let passwordRegex = NSPredicate(format: " MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])(?=.*[A-Z]).{6,}$")
        
        return passwordRegex.evaluate(with: password)
        
    }
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Welcome Back!")
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
                    
                }
                .padding()
                .padding(.top)
                
                Spacer()
                
                
                HStack{
                    Image(systemName: "mail")
                    TextField("Email",text: $email)
                    
                    Spacer()
                    
                    
                    if(email.count != 0 ){
                        
                        Image(systemName: email.isValidEmail() ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(email.isValidEmail() ? .green : .red)
                        
                    }
                    
                    
                }
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3.0)
                )
                .padding()
                
                HStack{
                    Image(systemName: "lock")
                    SecureField("Password",text: $password)
                    
                    Spacer()
                    
                    if (password.count != 0){
                        
                        Image(systemName: isValidPassword(password) ? "checkmark" : "xmark")
                            .fontWeight(.bold)
                            .foregroundColor(isValidPassword(password) ? .green : .red)
                        
                    }
                    
                    
                    
                }
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3.0)
                )
                .padding()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Text("Don't have an Account?")
                        .bold()
                }
                
                Spacer()
                Spacer()
                
                Button(action:{}){
                    Text("Sign In")
                        .bold()
                }
                
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
