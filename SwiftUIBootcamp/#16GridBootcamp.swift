//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 6/9/25.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center) {
                Section(header:
                            Text("Section 1")
                            .foregroundStyle(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.blue)
                            .padding()
                ) {
                    ForEach(0..<10) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                            Text("Section 2")
                            .foregroundStyle(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(.red)
                            .padding()
                ) {
                    ForEach(0..<10) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                    }
                }
                
            }
            
            LazyVGrid(columns: columns) {
                ForEach(0..<10) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
    }
}

#Preview {
    GridBootcamp()
}
