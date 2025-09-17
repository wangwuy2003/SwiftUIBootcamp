//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 14/9/25.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient:
                            Gradient(colors: [.purple, .purple.opacity(0.5)]),
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
            } else {
                OnboardingView()
            }
            
            //if user sign in
            // profile view
            // else
            // onboarding view
            
            
        }
    }
}

#Preview {
    IntroView()
}
