//
//  #24TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 7/9/25.
//

import SwiftUI

struct _24TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "IT's starting state" : "End state")
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isStartingState ? .red : .blue)
                .frame(width: isStartingState ? 200 : 50,
                       height: isStartingState ? 400 : 50)
           
            
            Spacer()
        }
    }
}

#Preview {
    _24TernaryBootcamp()
}
