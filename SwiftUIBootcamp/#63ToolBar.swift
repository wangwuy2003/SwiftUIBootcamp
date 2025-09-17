//
//  #63ToolBar.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _63ToolBar: View {
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder...", text: $text)
                    
                    ForEach(0..<10) { _ in
                        Rectangle()
                            .fill(.indigo)
                            .frame(width: 200, height: 200)
                    }
                }
                
                Text("Hey")
                    .foregroundStyle(.white)
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
                //                ToolbarItem(placement: .keyboard) {
                //                    Image(systemName: "gear")
                //                }
            }
            //            .navigationBarHidden(true)
            //            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New Screen: \(value)")
            }
        }
    }
}

#Preview {
    _63ToolBar()
}
