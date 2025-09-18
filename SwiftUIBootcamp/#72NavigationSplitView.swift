//
//  #72NavigationSplitView.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 18/9/25.
//

import SwiftUI

/*
 NavigationSplitView -> ipad, macos, visionos
 */



struct _72NavigationSplitView: View {
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFood: Fruit? = nil
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            
//            List {
//                ForEach(FoodCategory.allCases, id: \.rawValue) { category in
//                    Button(category.rawValue.capitalized) {
//                        selectedCategory = category
//                    }
//                }
//            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List(Fruit.allCases, id: \.rawValue, selection: $selectedFood) { fruit in
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                        
//                        List {
//                            ForEach(Fruit.allCases, id: \.rawValue) { fruit in
//                                Button(fruit.rawValue.capitalized) {
//                                    selectedFood = fruit
//                                }
//                            }
//                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle("\(selectedCategory.rawValue.capitalized)")
            } else {
                Text("Select a category to begin!")
            }
        } detail: {
            if let selectedFood {
                Text("You selected: \(selectedFood.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFood.rawValue.capitalized)
            } else {
                Text("Select something!!!")
            }
        }
        .navigationSplitViewStyle(.balanced)
        
        
        //        NavigationSplitView {
        //            Color.red
        //        } detail: {
        //            Color.blue
        //        }
        
    }
}

#Preview {
    _72NavigationSplitView()
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}

enum Fruit: String, CaseIterable {
    case apple, orange, banana
}
