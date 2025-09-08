//
//  #35TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 8/9/25.
//

import SwiftUI

struct _35TextFieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type some thing here...", text: $textFieldText)
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .clipShape(.rect(cornerRadius: 10))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? .blue : .gray)
                        .clipShape(.rect(cornerRadius: 10))
                        .foregroundStyle(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!!!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        // check text
        if textFieldText.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    _35TextFieldBootcamp()
}
