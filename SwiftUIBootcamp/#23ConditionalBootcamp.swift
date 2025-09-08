//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 7/9/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        Button("IS LOADING: \(isLoading.description)") {
            isLoading.toggle()
        }
        
        if isLoading {
            ProgressView()
        } else {
             
        }
        
//        Button("Circle button: \(showCircle.description)") {
//            showCircle.toggle()
//        }
//        
//        Button("Rectangle Button: \(showRectangle.description)") {
//            showRectangle.toggle()
//        }
//        
//        if showCircle {
//            Circle()
//                .frame(width: 100, height: 100)
//        }
//        
//        if showRectangle {
//            Rectangle()
//                .frame(width: 100, height: 100)
//        }
//        if showCircle && showRectangle {
//            RoundedRectangle(cornerRadius: 25)
//                .frame(width: 200, height: 200)
//        }
        
        
        
    }
}

#Preview {
    ConditionalBootcamp()
}
