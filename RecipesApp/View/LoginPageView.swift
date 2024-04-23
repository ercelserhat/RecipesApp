//
//  LoginPageView.swift
//  RecipesApp
//
//  Created by Serhat Erçel on 23.04.2024.
//

import SwiftUI

struct LoginPageView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @FocusState private var emailFocused: Bool
    @FocusState private var passwordFocused: Bool
    
    var body: some View {
        NavigationStack{
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
                    Text("Discover\nWorld of Flavors!")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .shadow(radius: 1)
                        .padding(.top)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack(alignment: .trailing){
                        
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
                        
                        // Forgot Password Link
                        NavigationLink {
                            Text("Forgot Password")
                        } label: {
                            Text("Forgot Password?")
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                                .font(.caption)
                        }
                        .padding(.top, 7)
                    }
                    
                    //Login Button
                    Button(action: {
                        
                    }, label: {
                        Text("Login")
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
                    //Register Page Link
                    HStack{
                        Text("Don't have an account?")
                            .fontWeight(.semibold)
                            .foregroundStyle(.white.opacity(0.7))
                        NavigationLink {
                            RegisterPageView()
                        } label: {
                            Text("Sign Up")
                                .underline()
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        }
                    }
                    .font(.callout)
                }
                .padding()
            }
        }
    }
}

#Preview {
    LoginPageView()
}
