//
//  Slider.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 13/9/25.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                //"\(sliderValue)"
                String(format: "%.2f", sliderValue)
            )
            .foregroundStyle(color)
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1
            ) {
                Text("")                    // label
            } minimumValueLabel: {
                Text("1")                   // min label
            } maximumValueLabel: {
                Text("5")                   // max label
            } onEditingChanged: { editing in
                color = editing ? .green : .red
            }
            .tint(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
