//
//  #59Badge.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _59Badge: View {
    var body: some View {
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(2)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
        
        List {
            Text("Hello World!!")
                .badge("New Item")
            Text("Hello World!!")
            Text("Hello World!!")
            Text("Hello World!!")
            Text("Hello World!!")
            Text("Hello World!!")
            Text("Hello World!!")
        }
    }
}

#Preview {
    _59Badge()
}
