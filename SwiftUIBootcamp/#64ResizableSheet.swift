//
//  #64ResizableSheet.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _64ResizableSheet: View {
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .medium, .large])
//                .presentationDetents([.fraction(0.1), .height(200), .medium, .large])
            
                .presentationDetents([.medium, .large], selection: $detents)
                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
            
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}

struct MyNextView: View {
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.indigo.ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                Text("Hello world!!!")
                
                Button("Medium") {
                    detents = .medium
                }
                
                Button("Large") {
                    detents = .large
                }
            }
        }
    }
}

#Preview {
    _64ResizableSheet()
}
