//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 4/9/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .font(.title)
            .bold()
            .underline(true, color: .red)
    }
}

#Preview {
    TextBootcamp()
}
