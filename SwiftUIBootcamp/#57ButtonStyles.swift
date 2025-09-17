//
//  #57ButtonStyles.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _57ButtonStyles: View {
    var body: some View {
        VStack {
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            .controlSize(.large)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
//            .buttonStyle(.bordered)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            .controlSize(.mini)
        }
        .padding()
    }
}

#Preview {
    _57ButtonStyles()
}
