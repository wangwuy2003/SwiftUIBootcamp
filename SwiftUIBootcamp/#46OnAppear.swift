//
//  #46OnAppear.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 14/9/25.
//

import SwiftUI

struct _46OnAppear: View {
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is a new text!"
                }
            }
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Apper: \(count)")
        }
    }
}

#Preview {
    _46OnAppear()
}
