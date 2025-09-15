//
//  #39ColorPicker.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 10/9/25.
//

import SwiftUI

struct _39ColorPicker: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("Select A Color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(.black)
            .clipShape(.rect(cornerRadius: 10))
            .foregroundStyle(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    _39ColorPicker()
}
