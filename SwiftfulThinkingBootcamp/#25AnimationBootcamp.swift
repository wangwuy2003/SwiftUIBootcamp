//
//  #25AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 7/9/25.
//

import SwiftUI

struct _25AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25.0)
                .fill(isAnimated ? .red : .green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(
                    Animation
                        .default
                        .repeatForever(autoreverses: true),
                    value: isAnimated
                )

            
            Spacer()
        }
    }
}

#Preview {
    _25AnimationBootcamp()
}
