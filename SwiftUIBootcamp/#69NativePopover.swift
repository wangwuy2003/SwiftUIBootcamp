//
//  #69NativePopover.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _69NativePopover: View {
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Click Me") {
                showPopover.toggle()
            }
            .padding(20)
            .background(.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.topLeading), content: {
                Text("hello, subscribers!!!")
                    .presentationCompactAdaptation(.popover)
            })
//            .popover(isPresented: $showPopover) {
//                Text("hello")
//                    .presentationCompactAdaptation(.popover)
//            }
            
        }
    }
}

#Preview {
    _69NativePopover()
}
