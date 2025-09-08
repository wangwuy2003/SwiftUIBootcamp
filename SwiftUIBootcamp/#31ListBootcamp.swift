//
//  #31ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 8/9/25.
//

import SwiftUI

struct _31ListBootcamp: View {
    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Peach", "Mango"]
    @State var veggies: [String] = ["tomato", "potaoto", "carrot"]
    @State var isExpanded: Bool = true
    
    var body: some View {
        NavigationStack {
            List {
                Section(isExpanded: $isExpanded) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: delete)
                    .onMove (perform: move)
                    .listRowBackground(Color.pink)
                } header: {
                    Text("Fruits")
                }
                
                Section(isExpanded: $isExpanded) {
                    
                    ForEach(veggies, id:\.self) { veggie in
                        Text(veggie)
                    }
                    
                } header: {
                    Text("Veggies")
                }
                
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    _31ListBootcamp()
}
