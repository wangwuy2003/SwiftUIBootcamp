//
//  #75ControlGroup.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 18/9/25.
//

import SwiftUI

struct _75ControlGroup: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
                Button("Tress") {
                    
                }
            }
            
            Button("One") {
                
            }
            
            Menu("Three") {
                Button("Hi") {
                    
                }
                
                Button("Hello") {
                    
                }
                Button("How are u?") {
                    
                }
            }
        }
    }
}

#Preview {
    _75ControlGroup()
}
