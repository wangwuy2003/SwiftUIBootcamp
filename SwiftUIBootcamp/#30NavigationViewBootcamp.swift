//
//  #30NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 8/9/25.
//

import SwiftUI

struct _30NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                NavigationLink("Hello, world!") {
                    MyOtherScreen()
                }
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
            }
            .navigationTitle("Screen 1")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    NavigationLink {
                        Text("3rd Screen")
                    } label: {
                        Image(systemName: "person.fill")
                    }

                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    NavigationLink {
                        MyOtherScreen()
                    } label: {
                        Image(systemName: "gear")
                    }
                    .tint(.red)
                    
                }
            }
        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            VStack {
                Button("Back Button") {
                    dismiss()
                }
                
                NavigationLink("Click here") {
                    Text("3rd Screen!")
                }
            }
            .frame(maxWidth: .infinity)
        }
        .background(.green)
        .navigationTitle("Green Screen!")
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                Button(action: { dismiss() }) {
                    HStack {
                        Image(systemName: "arrowshape.turn.up.backward.2.fill")
                        Text("Back")
                    }
                }
            }
        }
    }
}

#Preview {
    _30NavigationViewBootcamp()
}
