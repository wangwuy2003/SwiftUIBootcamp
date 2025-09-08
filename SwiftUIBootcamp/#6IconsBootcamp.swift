//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
//            .foregroundStyle(.red)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
