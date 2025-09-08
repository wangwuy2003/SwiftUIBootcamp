//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 6/9/25.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press me") {
                self.title = "Button was pressed"
            }
            
            Button {
                self.title = "Button #2 was pressed"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 10))
                    .shadow(radius: 10)
            }
            
            Button {
                self.title = "Button #3"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.brown)
                    }
            }
            
            Button {
                self.title = "Button #40"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Capsule().stroke(.gray, lineWidth: 3.0))
            }
        }
    }
}

#Preview {
    ButtonBootcamp()
}
