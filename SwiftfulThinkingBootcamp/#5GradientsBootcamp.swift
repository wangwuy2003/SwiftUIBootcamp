//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    startPoint: .top,
//                    endPoint: .bottom)
                
                RadialGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .center,
                    startRadius: 5,
                    endRadius: 200)
            )
            .frame(width: 300, height: 200)
    }
}
    
#Preview {
    GradientsBootcamp()
}
