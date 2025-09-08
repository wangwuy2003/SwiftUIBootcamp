//
//  Background&OverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct Background_OverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .gray, radius: 10, x: 0.0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay {
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                            }
                            .shadow(color: .gray, radius: 10, x: 5, y: 5)
                    })
            )
        
    }
}

#Preview {
    Background_OverlayBootcamp()
}
