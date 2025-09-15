//
//  #44DarkMode.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 14/9/25.
//

import SwiftUI

struct _44DarkMode: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 28) {
                    Text("this is primary")
                        .foregroundStyle(.primary)
                    Text("this is secondary")
                        .foregroundStyle(.secondary)
                    Text("this is black")
                        .foregroundStyle(.black)
                    Text("this is white")
                        .foregroundStyle(.white)
                    Text("this is red")
                        .foregroundStyle(.red)
                    Text("this color is globally adaptive!")
                        .foregroundStyle(.adaptive)
                    Text("this color is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode")
        }
    }
}

#Preview {
    _44DarkMode()
}
