//
//  #71ViewThatFits.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 18/9/25.
//

import SwiftUI

struct _71ViewThatFits: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to dipslay to the user!")
                Text("This is some text that I would like to dipslay")
                Text("This is some text!")
            }
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    _71ViewThatFits()
}
