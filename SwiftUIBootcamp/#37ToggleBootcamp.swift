//
//  #37ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 10/9/25.
//

import SwiftUI

struct _37ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status: ")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle(isOn: $toggleIsOn) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    _37ToggleBootcamp()
}
