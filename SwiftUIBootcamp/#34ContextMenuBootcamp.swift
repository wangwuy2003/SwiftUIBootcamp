//
//  #34ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 8/9/25.
//

import SwiftUI

struct _34ContextMenuBootcamp: View {
    @State var backgroundColor: Color = .cyan
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .padding(30)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 30))
        .contextMenu {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .red
            } label: {
                Label("Report Post", systemImage: "")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

#Preview {
    _34ContextMenuBootcamp()
}
