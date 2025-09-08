//
//  #28SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 7/9/25.
//

import SwiftUI

struct _28SheetsBootcamp: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(.white)
                    .clipShape(.rect(cornerRadius: 10))
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SecondScreen()
//            }
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            Button {
                dismissScreen.callAsFunction()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    _28SheetsBootcamp()
//    SecondScreen()
}
