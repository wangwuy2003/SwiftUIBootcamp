//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 6/9/25.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor: Color = .green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 10) {
                    Button("Button 1") {
                        backgroundColor = .black
                        myTitle = "Buton 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Buton 2 was pressed"
                        count -= 1

                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
