//
//  #60FocusState.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _60FocusState: View {
    enum OnboardingField {
        case username
        case password
    }
    
//    @FocusState private var usernameFocus: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordFocus: Bool
    @State private var password: String = ""
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .background(.gray.opacity(0.5))
                .clipShape(.rect(cornerRadius: 10))
            
            TextField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                .background(.gray.opacity(0.5))
                .clipShape(.rect(cornerRadius: 10))
            
//            Button("TOGGLE FOCUS STATE") { 
//                usernameFocus.toggle()
//            }
            
            Button("SIGN UP") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Sign up...")
                } else if usernameIsValid {
//                    usernameFocus = false
//                    passwordFocus = true
                    fieldInFocus = .password
                } else {
//                    usernameFocus = true
//                    passwordFocus = false
                    fieldInFocus = .username
                }
            }
            
            
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                self.usernameFocus = true
//            }
//        }
    }
}

#Preview {
    _60FocusState()
}
