//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("_")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 300, alignment: .center)
            .clipShape(.rect(cornerRadius: 30))
    }
}

#Preview {
    ImageBootcamp()
}
