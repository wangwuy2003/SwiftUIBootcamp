//
//  #55BackgroundMaterial.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

struct _55BackgroundMaterial: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                    Spacer()
                
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
            Image("taptap")
        )
    }
}

#Preview {
    _55BackgroundMaterial()
}
