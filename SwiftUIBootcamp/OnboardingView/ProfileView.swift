//
//  ProfileView.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 14/9/25.
//

import SwiftUI

struct ProfileView: View {
    // appstorage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: String?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(currentUserName ?? "your name here")
            Text(currentUserAge ?? "0")
            Text(currentUserGender ?? "123")
            
            Button {
                signOut()
            } label: {
                Text("Sign Out")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 10))
            }
        }
        .font(.title)
        .foregroundStyle(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .clipShape(.rect(cornerRadius: 10))
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserGender = nil
        currentUserAge = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
