//
//  ExtractedFunctionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 6/9/25.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            backgroundColor
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 10))
            }
        }
    }
    
    func buttonPressed() {
        backgroundColor = .green
    }
}

#Preview {
    ExtractedFunctionBootcamp()
}
