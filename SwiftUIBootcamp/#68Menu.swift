//
//  #68Menu.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _68Menu: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Menu {
                Button("One") {
                    text = "One"
                }
                Button("Two") {
                    
                }
                Button("Three") {
                    
                }
            } label: {
                Text("Click me")
            }
        }
        
        Text("\(text)")
    }
}

#Preview {
    _68Menu()
}
