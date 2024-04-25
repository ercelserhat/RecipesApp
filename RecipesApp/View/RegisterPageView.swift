//
//  RegisterPageView.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 23.04.2024.
//

import SwiftUI
import Firebase

struct RegisterPageView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var passwordAgain: String = ""
    
    @FocusState private var nameFocused: Bool
    @FocusState private var emailFocused: Bool
    @FocusState private var passwordFocused: Bool
    @FocusState private var passwordAgainFocused: Bool
    
    @Environment(\.dismiss) private var dismiss
    
    var refUsers = Database.database().reference().child("users")
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.crimson, .crimson, .darkorange], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                // Logo goes here
                Image(systemName: "fork.knife.circle")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.white)
                
                // Welcome Message
                Text("Let's Get Started!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .shadow(radius: 1)
                    .padding(.top)
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(alignment: .trailing){
                    
                    // Name TextField
                    HStack{
                        TextField(text: $name) {
                            Text("Name")
                                .foregroundStyle(.white.opacity(0.8))
                        }
                        .autocorrectionDisabled()
                        .focused($nameFocused)
                        if nameFocused{
                            Image(systemName: "xmark")
                                .onTapGesture {
                                    name = ""
                                }
                        }
                    }
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.white)
                            .background(.white.opacity(0.2))
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    // Email TextField
                    HStack{
                        TextField(text: $email) {
                            Text("Email")
                                .foregroundStyle(.white.opacity(0.8))
                        }
                        .autocorrectionDisabled()
                        .focused($emailFocused)
                        if emailFocused{
                            Image(systemName: "xmark")
                                .onTapGesture {
                                    email = ""
                                }
                        }
                    }
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.white)
                            .background(.white.opacity(0.2))
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    // Password TextField
                    HStack{
                        SecureField(text: $password) {
                            Text("Password")
                                .foregroundStyle(.white.opacity(0.8))
                        }
                        .autocorrectionDisabled()
                        .focused($passwordFocused)
                        if passwordFocused{
                            Image(systemName: "xmark")
                                .onTapGesture {
                                    password = ""
                                }
                        }
                    }
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.white)
                            .background(.white.opacity(0.2))
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    // Password Again TextField
                    HStack{
                        SecureField(text: $passwordAgain) {
                            Text("Password Again")
                                .foregroundStyle(.white.opacity(0.8))
                        }
                        .focused($passwordAgainFocused)
                        if passwordAgainFocused{
                            Image(systemName: "xmark")
                                .onTapGesture {
                                    passwordAgain = ""
                                }
                        }
                    }
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.white)
                            .background(.white.opacity(0.2))
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                
                //Register Button
                Button(action: {
                    if name != "" && email != "" && password != "" && passwordAgain != ""{
                        Auth.auth().createUser(withEmail: email, password: password) { authdataresult, error in
                            if error != nil{
                                print("Hata: \(error?.localizedDescription ?? "Kayıt sırasında hata oluştu.")")
                            } else{
                                let newUser = ["user_name" : self.name, "user_email" : self.email, "user_password" : self.password]
                                refUsers.childByAutoId().setValue(newUser)
                            }
                        }
                    }
                }, label: {
                    Text("Register")
                        .fontWeight(.semibold)
                        .foregroundStyle(.crimson)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.crimson, lineWidth: 2)
                                .background(.white.opacity(0.9))
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .shadow(color: .white, radius: 2)
                        .padding(.top, 30)
                })
                Spacer()
                Spacer()
                Spacer()
                
                //Login Page Link
                HStack{
                    Text("Already have an account?")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white.opacity(0.7))
    
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Log In")
                            .underline()
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                    })
                }
                .font(.callout)
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    RegisterPageView()
}
