//
//  ExtractSubviewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 6/9/25.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            HStack {
                MyItem(title: "Apples", count: 1, color: .red)
                MyItem(title: "Oranges", count: 2, color: .orange)
                MyItem(title: "Bananas", count: 20, color: .yellow)
            }
        }
    }
}

#Preview {
    ExtractSubviewBootcamp()
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(.rect(cornerRadius: 10))
    }
}
