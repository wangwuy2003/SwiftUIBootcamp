//
//  #67AnimationUpdate.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _67AnimationUpdate: View {
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action 1") {
                    animate1.toggle()
                }
                
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(.orange)
                    
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(.red)
            }
        }
        .animation(.spring(), value: animate1)
        .animation(.spring, value: animate2)
    }
}

#Preview {
    _67AnimationUpdate()
}
