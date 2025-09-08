//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 6/9/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(.red)
    }
}

#Preview {
    SafeAreaBootcamp()
}
