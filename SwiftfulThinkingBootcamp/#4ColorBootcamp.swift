//
//  ColorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(#colorLiteral(red: 0.9996691346, green: 0.9916805625, blue: 0.6804408431, alpha: 1)))
        
            .frame(width: 300, height: 200)
            .shadow(color: .red, radius: 10)
    }
}

#Preview {
    ColorBootcamp()
}
