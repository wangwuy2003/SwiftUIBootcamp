//
//  ShapeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apple on 5/9/25.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
//        Circle()
//            .fill(Color.blue)
//            .foregroundStyle(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 30)
        
//        Ellipse()
//            .frame(width: 200, height: 100)
        
        Capsule(style: .circular )
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapeBootcamp()
}
