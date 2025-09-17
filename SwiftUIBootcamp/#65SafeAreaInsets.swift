//
//  #65SafeAreaInsets.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _65SafeAreaInsets: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Inset")
            .navigationBarTitleDisplayMode(.inline)
            //            .overlay(alignment: .bottom) {
            //                Text("hi")
            //                    .frame(maxWidth: .infinity)
            //                    .background(.yellow)
            //            }
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("hi")
//                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.background(ignoresSafeAreaEdges: .bottom))
//                    .clipShape(Circle())
//                    .padding()
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("hi")
//                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
//                    .clipShape(Circle())
//                    .padding()
            }
        }
    }
}

#Preview {
    _65SafeAreaInsets()
}
