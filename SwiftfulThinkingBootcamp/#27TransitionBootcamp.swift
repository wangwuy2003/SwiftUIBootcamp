//
//  #27TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 7/9/25.
//

import SwiftUI

struct _27TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.spring) {
                        showView.toggle()
                    }
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
            }
            
           
                
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    _27TransitionBootcamp()
}
