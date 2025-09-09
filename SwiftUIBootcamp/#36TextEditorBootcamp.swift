//
//  #36TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 9/9/25.
//

import SwiftUI

struct _36TextEditorBootcamp: View {
    @State var textEditorText: String = "This is the starting text... "
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundStyle(.red)
                    .colorMultiply(.gray)
                
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 10))
                }
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    _36TextEditorBootcamp()
}
