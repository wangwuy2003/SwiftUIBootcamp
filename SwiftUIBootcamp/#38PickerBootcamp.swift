//
//  #38PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 10/9/25.
//

import SwiftUI

struct _38PickerBootcamp: View {
    @State var selection: String = "0"
    var filterOptions: [String] = ["1", "2", "3", "4"]
    
    var body: some View {
//        VStack {
//            HStack {
//                Text("Age: ")
//                Text("\(selection)")
//            }
//            
//            List {
//                Picker(selection: $selection) {
//                    ForEach(0..<10, id: \.self) { index in
//                        Text("\(index)")
//                            .tag(index)
//                    }
//                } label: {
//                    Text("Picker")
//                }
//                .pickerStyle(.wheel)
//            }
//        }
        
        Menu {
            Picker("Filter", selection: $selection) {
                ForEach(filterOptions, id: \.self) { option in
                    HStack {
                        Text(option)
                        Image(systemName: "heart.fill")
                    }
                    .tag(option)
                }
            }
            .pickerStyle(InlinePickerStyle())
        } label: {
            HStack {
                Text("Filter:")
                Text(selection)
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(.blue)
            .cornerRadius(10)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
        }


    }
}

#Preview {
    _38PickerBootcamp()
}
