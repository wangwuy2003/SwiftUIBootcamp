//
//  #43Tabbar.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 13/9/25.
//

import SwiftUI

struct _43Tabbar: View {
    @State var selectedTab: Int = 2
    
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]
    
    var body: some View {
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Label("Home", systemImage: "house.fill")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Label("Browse", systemImage: "globe")
//                }
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem {
//                    Label("Profile", systemImage: "person.fill")
//                }
//                .tag(2)
//        }
//        .tint(.red)
        
        TabView {
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundStyle(.red)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundStyle(.green)
//            RoundedRectangle(cornerRadius: 25)
            
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
    }
}

#Preview {
    _43Tabbar()
}

struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.red
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 10))
                }
            }
        }
    }
}
