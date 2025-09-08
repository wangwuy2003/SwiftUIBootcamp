//
//  PaddingSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct PaddingSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom)
            
            Text("This is the description of what we we do on this screen. It is multiple lines and we will align the text to the leading edge.")
            
        }
        .padding()
        .padding(.vertical, 20)
        .background(
            Color.white
                .clipShape(.rect(cornerRadius: 10))
                .shadow(color: Color.black.opacity(0.3),
                               radius: 10,
                               x: 0.0,
                               y: 10  )
            
        )
        .padding(.horizontal, 10)
        
    }
}

#Preview {
    PaddingSpacerBootcamp()
}
