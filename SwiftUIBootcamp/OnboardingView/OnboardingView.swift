//
//  OnboardingView.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 14/9/25.
//

import SwiftUI

struct OnboardingView: View {
    // Onboarding states:
    /*
     0 - Welcome Screen
     1 - Add Name
     2 - Add age
     3 - Gender
     */
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    var body: some View {
        ZStack {
            RadialGradient(gradient:
                            Gradient(colors: [.purple, .purple.opacity(0.5)]),
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundStyle(.green)
                }
            }
            
            VStack {
                Spacer()
                
                bottomButton
            }
            .padding(30)
        }
    }
}


#Preview {
    OnboardingView()
}

// MARK: COMPONENTS
extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign Up" :
                onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(.rect(cornerRadius: 10))
            .animation(nil, value: onboardingState)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    // MARK: welcomeSection
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .foregroundStyle(.white)
                        .offset(y: 5)
                }
            
            Text("This is the #1 app for binding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding()
    }
    
    // MARK: addNameSection
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your name?.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .clipShape(.rect(cornerRadius: 10))
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your age?.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Text("What's your gender?.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Menu {
                Picker(selection: $gender) {
                    Text("Male").tag("male")
                    Text("Female").tag("female")
                    Text("Non-Binary").tag("Non-Binary")
                } label: {
                    Text("gender picker")
                }
                
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: FUNCTIONS

extension OnboardingView {
    func handleNextButtonPressed() {
        
        if onboardingState == 3 {
            //sign in
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
        
    }
}
