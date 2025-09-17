//
//  #61SubmitTextField.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _61SubmitTextField: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("something to the console.")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("something to the console.")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("something to the console.")
                }
        }
    }
}

#Preview {
    _61SubmitTextField()
}
