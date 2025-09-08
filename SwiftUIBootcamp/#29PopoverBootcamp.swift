//
//  #29PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 8/9/25.
//

import SwiftUI

//sheets
//animations
//transitions

struct _29PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen) {
//                 NewScreen()
//            }
            
            // METHOD 2 - TRANSITION
//            VStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        
//                }
//            }
//            .animation(.spring, value: showNewScreen)
            
            // METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: showNewScreen)
            
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea()
            
            Button {
                //dismiss.callAsFunction()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding()
            }
        }
    }
}

#Preview {
    _29PopoverBootcamp()
}
