//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct InitializerBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruits) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruits {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 15, fruit: .orange)
        InitializerBootcamp(count: 15, fruit: .apple)
    }
}
