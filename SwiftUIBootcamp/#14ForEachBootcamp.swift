//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 6/9/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices, id:\.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}
    
#Preview {
    ForEachBootcamp()
}
