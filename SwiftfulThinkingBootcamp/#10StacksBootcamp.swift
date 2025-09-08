//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct StacksBootcamp: View {
    // vstack -> vertical
    // hstack -> horizontal
    // zstack -> zIndex (back to front)
    var body: some View {
//        ZStack(alignment: .bottom) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 75, height: 75)
//                    
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(.white)
//            }
//            .background(.black)
//        }
        
        VStack(alignment: .center, spacing: 20) {
            Text("5")
                .font(.largeTitle)
                .underline()
            Text("Item in your cart")
                .font(.caption)
                .foregroundStyle(.gray)
            
        }
    }
}

#Preview {
    StacksBootcamp()
}
